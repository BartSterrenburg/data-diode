#include "tcp_server.h"
#include "command.h"
#include "lwip/tcp.h"
#include <string.h>
/* One connection. Bounded RX/TX rings; no heap allocations by application. */
#define RX_CAP 8192
#define TX_CAP 8192
#define LINE_CAP 64
static struct {
 struct tcp_pcb *pcb;
 char rx[RX_CAP],tx[TX_CAP],line[LINE_CAP];
 unsigned ri,rn,ti,tn,ln;
 int invalid,overflow,fin;
} c;
static void lost(void *arg,err_t err) { (void)arg;(void)err; memset(&c,0,sizeof c); }
static err_t pump(void) {
 char reply[96];
 while(c.rn && TX_CAP-c.tn>=sizeof reply) {
  unsigned char ch=(unsigned char)c.rx[c.ri];
  c.ri=(c.ri+1)%RX_CAP; c.rn--;
  tcp_recved(c.pcb,1);
  if(ch=='\n') {
   if(c.overflow) strcpy(reply,"ERR TOO_LONG\n");
   else if(c.invalid) strcpy(reply,"ERR CHARACTER\n");
   else {
    if(c.ln && c.line[c.ln-1]=='\r') c.ln--;
    c.line[c.ln]=0; command_execute(c.line,reply,sizeof reply);
   }
   c.ln=0;c.invalid=0;c.overflow=0;
   for(unsigned i=0;reply[i];i++) {
    c.tx[(c.ti+c.tn)%TX_CAP]=reply[i];c.tn++;
   }
  } else {
   if((ch<32 && ch!='\r') || ch>126) c.invalid=1;
   if(c.ln<LINE_CAP-1) c.line[c.ln++]=(char)ch;
   else c.overflow=1;
  }
 }
 while(c.tn && tcp_sndbuf(c.pcb)) {
  unsigned n=TX_CAP-c.ti;
  if(n>c.tn)n=c.tn;
  if(n>tcp_sndbuf(c.pcb))n=tcp_sndbuf(c.pcb);
  err_t e=tcp_write(c.pcb,c.tx+c.ti,(u16_t)n,TCP_WRITE_FLAG_COPY);
  if(e==ERR_MEM)break;
  if(e!=ERR_OK) { struct tcp_pcb *p=c.pcb; tcp_abort(p); return ERR_ABRT; }
  c.ti=(c.ti+n)%TX_CAP;c.tn-=n;
 }
 tcp_output(c.pcb);
 if(c.fin && !c.rn && !c.tn) {
  struct tcp_pcb *p=c.pcb;
  tcp_recv(p,NULL);tcp_sent(p,NULL);tcp_poll(p,NULL,0);tcp_err(p,NULL);
  if(tcp_close(p)==ERR_OK) memset(&c,0,sizeof c);
  else { tcp_abort(p);memset(&c,0,sizeof c);return ERR_ABRT; }
 }
 return ERR_OK;
}
static err_t received(void *arg,struct tcp_pcb *p,struct pbuf *b,err_t err) {
 (void)arg;(void)p;
 if(!b) { c.fin=1;return pump(); }
 if(err!=ERR_OK) {pbuf_free(b);return err;}
 if(b->tot_len>RX_CAP-c.rn)return ERR_MEM; /* lwIP retains pbuf for retry */
 for(struct pbuf *q=b;q;q=q->next) {
  const char *s=q->payload;
  for(unsigned i=0;i<q->len;i++) { c.rx[(c.ri+c.rn)%RX_CAP]=s[i];c.rn++; }
 }
 pbuf_free(b);
 return pump();
}
static err_t sent(void *a,struct tcp_pcb *p,u16_t n) {(void)a;(void)p;(void)n;return pump();}
static err_t poll_client(void *a,struct tcp_pcb *p) {(void)a;(void)p;return pump();}
static err_t accepted(void *a,struct tcp_pcb *p,err_t e) {
 (void)a;
 if(e!=ERR_OK)return e;
 if(c.pcb) {tcp_abort(p);return ERR_ABRT;}
 memset(&c,0,sizeof c);c.pcb=p;
 tcp_recv(p,received);tcp_sent(p,sent);tcp_err(p,lost);tcp_poll(p,poll_client,2);
 tcp_nagle_disable(p);
 return ERR_OK;
}
int tcp_server_start(void) {
 struct tcp_pcb *p=tcp_new_ip_type(IPADDR_TYPE_V4),*listener;
 if(!p)return -1;
 if(tcp_bind(p,IP_ANY_TYPE,5001)!=ERR_OK){tcp_close(p);return -2;}
 listener=tcp_listen(p);
 if(!listener){tcp_close(p);return -3;}
 tcp_accept(listener,accepted);return 0;
}
