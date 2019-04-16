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
BtauF=BtauT;
%BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte+timeslot)/timeslot); %the holding times of collision
%pA is the non-zero root of the fixed-point equation of the steady-state probability of successful transmission of HOL packets given that the channel is idle, p:
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.9])
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.8]);
%throughput in basic access mechanism
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))
  end

 n=[5:5:50];
 plot(n, throughputB,'-k')
 hold on

% adohoc=[24.1833 ];
adohoc=[24.1833 22.5998 21.5924 20.8177 20.1993 19.7162 19.2796 18.8766 18.5404 18.2209];
infrastructure=[23.8001 22.2435 21.2619 20.5526 19.911 19.4098 18.9672 18.5862 18.2248 17.9097];

adohocsb=[24.4116 22.8281 21.8207 21.046 20.4176 19.9017 19.4796 19.1 18.7404 18.4209];
infrastructuresb=[23.9901 22.4335 21.4519 20.7527 20.1212 19.6076 19.1272 18.7863 18.4048 18.1515];

 n=[5:5:50];
plot(n, adohoc,'ok')
hold on
plot(n,infrastructure,'*k')
hold on
plot(n, adohoc,'dk')
hold on
plot(n,infrastructure,'sk')
hold on
 ylim([12 28]);

  
  