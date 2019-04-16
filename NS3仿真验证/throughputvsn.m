w=16;%the intial backoff window size, can also be represented by CWmin
q=0.5; %the backoff factor
k=5;   %the cutoff phase, k=log2(CWmax/CWmin),CWmin 
Vp=54; %date rate, Mbps
Vc=1; %basic rate, Mbps
PH=20; %PHY header,default set to 20us
MH=288; %MAC header, bits
H=MH/Vp+PH; %
DIFS=50; % us
SIFS=10; %us
delte=0.001; % Dai model no propagation delay
timeslot=20;  % time slot
CTS=112/Vc+20; %us
ACK=112/Vc+20; %us
%RTS=160/Vc+20; %us 44bytes*8
% 802.11g 
CTS=304/Vc+20; %us
ACK=304/Vc+20; %us
RTS=352/Vc+20;
L=1000*8;  %packet size, bits

throughputB=zeros(1,10);

i=0;

  for  n=5:5:50
      i=i+1;
BtauT=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot); %the holding time of successful transmission
%BtauF=BtauT;
BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte)/timeslot); %the holding times of collision
%pA is the non-zero root of the fixed-point equation of the steady-state probability of successful transmission of HOL packets given that the channel is idle, p:
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.9])
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 1])
%throughput in basic access mechanism
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))
  end

 n=[5:5:50];
 plot(n, throughputB,'-r')
 hold on


  
  