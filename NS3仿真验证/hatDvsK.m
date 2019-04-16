
n=50;
w=4;
q=0.5;
%k=6;

Vp=54;
Vc=6;
DIFS=34;
SIFS=16;
delte=0.0001;
timeslot=9;
phyH=20;
macH=288/Vp;
H=phyH+macH;
CTS=112/Vc+20;
%CTS=44;
ACK=112/Vc+20;
%ACK=44;
RTS=160/Vc+20;
%CTS=112/54+20;
%ACK=112/54+20;
%RTS=160/54+20;
           


  throughputB=zeros(1,9);
 
  i=0;
 for k=2:1:10
      i=i+1;
L=1023*8;
BtauT=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot);
BtauF=BtauT;
%BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte+timeslot)/timeslot)
%pa=fzero(@(p)exp(-n/(1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0 1])
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.96])

throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))

 end 
 
   k=[2:1:10];
  plot(k, throughputB,'--k')
  legend('Analysis','Simulation')
  hold on
T=[1.145433 4.19242 8.55419 11.8469 14.2109 15.7341 16.7928 17.6472 18.2958];
plot(k,T,'ok');
hold on
Tk=[1.56421 4.98782 9.12459 12.4345 14.9909 16.4414 17.4512 17.9574 18.6912];
plot(k,Tk,'dk');
hold on

  