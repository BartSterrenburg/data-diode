import sys,time,socket,json,re
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from client import Client,check
host='192.168.2.2'
# Autonegotiation and the driver can take several seconds after a JTAG reset.
for n in range(40):
 try:
  c=Client(host);s=c.command('STATUS');c.close();break
 except (OSError,ConnectionError):time.sleep(.5)
else:raise RuntimeError('Server did not start')
results=check(host,5001)
c=Client(host)
before=int(re.search(r'SEQ (\d+)',c.command('STATUS'))[1])
# Burst plus slow reader exercises bounded TX queues and TCP backpressure.
c.send(b'LED 1\nLED 0\n'*1500)
time.sleep(.3)
for n in range(3000):assert c.line()==f'OK LED {1-n%2}'
after=int(re.search(r'SEQ (\d+)',c.command('STATUS'))[1])
assert (after-before)&0xffffffff==3000
results.append('3000 burstcommando\u2019s; FPGA-teller exact +3000')
other=Client(host)
try:
 try:
  other.send(b'STATUS\n')
  response=other.sock.recv(128)
  assert response==b'',response
 except (ConnectionResetError,ConnectionAbortedError):pass
finally:other.close()
assert 'OK STATUS' in c.command('STATUS')
results.append('tweede client geweigerd; eerste blijft werken')
c.send(b'LED 1\n');c.sock.shutdown(socket.SHUT_WR)
assert c.line()=='OK LED 1'
assert c.sock.recv(1)==b''
c.close();results.append('TCP half-close levert laatste antwoord')
time.sleep(.2)
c=Client(host);assert c.command('LED 0')=='OK LED 0';print(c.command('STATUS'));c.close()
print(json.dumps(results,ensure_ascii=False,indent=2))
