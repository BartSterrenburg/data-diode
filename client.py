"""TCP client and repeatable hardware checks. Python standard library only."""
import argparse,socket,time,json
class Client:
 def __init__(self,host,port=5001):
  self.sock=socket.create_connection((host,port),timeout=5)
  self.sock.settimeout(5);self.buf=b''
 def send(self,data):self.sock.sendall(data)
 def line(self):
  while b'\n' not in self.buf:
   b=self.sock.recv(4096)
   if not b:raise ConnectionError('Connection closed before reply')
   self.buf+=b
  line,self.buf=self.buf.split(b'\n',1)
  return line.decode('ascii')
 def command(self,s):self.send((s+'\n').encode('ascii'));return self.line()
 def close(self):self.sock.close()
def check(host,port):
 results=[]
 c=Client(host,port)
 def expect(label,data,want):
  c.send(data);got=c.line();assert got==want,(label,got,want);results.append(label)
 expect('LED aan',b'LED 1\n','OK LED 1')
 s=c.command('STATUS');assert 'LED 1 ' in s,s;results.append('STATUS teruggelezen')
 expect('LED uit',b'LED 0\n','OK LED 0')
 expect('ongeldig',b'BOGUS\n','ERR COMMAND')
 expect('nulbyte',b'LED\x00 1\n','ERR CHARACTER')
 expect('te lang',b'X'*200+b'\n','ERR TOO_LONG')
 c.send(b'LE');time.sleep(.1);c.send(b'D 1');time.sleep(.1);c.send(b'\n')
 assert c.line()=='OK LED 1';results.append('opgesplitst commando')
 c.send(b'LED 0\nLED 1\nSTATUS\n')
 assert c.line()=='OK LED 0';assert c.line()=='OK LED 1';assert 'LED 1 ' in c.line()
 results.append('drie commando\u2019s in een TCP-write')
 expect('CRLF',b'LED 0\r\n','OK LED 0')
 c.send(b'LED 1\n'*200)
 for _ in range(200):assert c.line()=='OK LED 1'
 results.append('200 commando\u2019s achter elkaar')
 c.send(b'LED ');c.close();time.sleep(.3)
 c=Client(host,port);assert c.command('LED 0')=='OK LED 0';c.close()
 results.append('verbreken met onvolledig commando en opnieuw verbinden')
 return results
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--host',default='192.168.2.2');p.add_argument('--port',type=int,default=5001)
 p.add_argument('--test',action='store_true');p.add_argument('command',nargs='*');a=p.parse_args()
 if a.test:print(json.dumps(check(a.host,a.port),ensure_ascii=False,indent=2))
 else:
  c=Client(a.host,a.port)
  try:
   if a.command:print(c.command(' '.join(a.command)))
   else:
    print('LED 1 / LED 0 / STATUS; quit om af te sluiten')
    while True:
     s=input('> ')
     if s.lower()=='quit':break
     print(c.command(s))
  finally:c.close()
