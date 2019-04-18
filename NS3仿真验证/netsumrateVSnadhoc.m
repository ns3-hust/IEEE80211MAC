%hold on
%n=[5:5:50];
%adhocT=[24.0571 22.8106 21.9022 21.2052 20.6373 20.1553 19.7354 19.3615 19.0238 18.7151];
adhocT=[24.176 22.606715 21.597920 20.8498 20.20130 19.7162 19.289840 18.881745 18.54 18.2209]
InT=[23.8001 22.2435 21.2619 20.5526 19.911 19.4098 18.9672 18.5862 18.2248 17.9097];
n=[5 10 15 20 25 30 35 40 45 50];
plot(n,adhocT,'ok');
hold on


hold on
%plot(5,24.1764,'ok');
%hold on
%hold on 
%plot(n,InT,'*k');
hold on
ylim([14 30])
%xlim([4 50])
w=16;%the intial backoff window size, can also be represented by CWmin
q=0.5; %the backoff factor
k=6;   %the cutoff phase, k=log2(CWmax/CWmin),CWmin 
Vp=54; %date rate, Mbps
Vc=6; %basic rate, Mbps
PH=20; %PHY header, 20us
MH=288; %MAC header, bits
H=MH/Vp+PH; %
DIFS=34; % us
SIFS=16; %us
delte=0.001; %
timeslot=9;  % time slot
CTS=112/Vc+20; %us
ACK=112/Vc+20; %us
RTS=160/Vc+20; %us
L=1023*8;  %packet size, bits

throughputB=zeros(1,10);

i=0;

  for  n=5:5:50
      i=i+1;
BtauT=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot); %the holding time of successful transmission
%BtauF=BtauT;
BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte+timeslot)/timeslot); %the holding times of collision
%pA is the non-zero root of the fixed-point equation of the steady-state probability of successful transmission of HOL packets given that the channel is idle, p:
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.9])
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.99]);
%throughput in basic access mechanism
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))
  end

 n=[5:5:50];
plot(n, throughputB,'-k')
 hold on

xlim([5 50])
  
  
