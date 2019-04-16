hold on;
n=50;
w=16;
q=0.5;
k=6;

Vp=54;
Vc=6;
DIFS=34;
SIFS=16;
delte=0.001;
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
                 

 
L=1023*8;
    %   L=3200:3200:32000
 % for L=5000:5000:50000
      i=i+1;
BtauT=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot);
%BtauF=((H+L/Vp+DIFS+ACK+SIFSdelte)/timeslot)
BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte+timeslot)/timeslot);
%BtauF=BtauT;
%BtauF=((H+L/Vp+69)/timeslot)

%BtauF=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot)

%BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte)/timeslot)
%BtauF=BtauT;
%BtauF=((H/Vp+L/Vp+DIFS+delte)/timeslot+2e-05/timeslot)
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.1)
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.8]);

%pa=fzero(@(p)exp(-n/(1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0 1])
throughputB=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))




 