n=50;
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
ACK=112/Vc+20;
RTS=160/Vc+20;
                          
pa1=zeros(1,10);
PL1=zeros(1,10);
pa2=zeros(1,10);
PL2=zeros(1,10);

throughputB=zeros(1,10);
  i=0;  
 for g=2:1:11
      i=i+1;
      w=power(2,g);
L=1023*8;
PL=1023*8;
BtauT=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot);
%BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte+timeslot)/timeslot)
BtauF=BtauT
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.96])
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))

 end
  w=[2 3 4 5 6 7 8 9 10 11];
  plot(w, throughputB,'-k')
  hold on
T=[14.038 15.9293 17.9472 19.7162 21.3375 22.7525 23.5865 23.5532 21.4958 17.136];
plot(w,T,'ok');
hold on
%Tw=[13.3228 15.1233 17.1312 18.9261 20.9545 22.1214 23.8541 23.6532 21.9891 17.936];
%plot(w,Tw,'dk');
hold on
set(gca,'XTicklabel',{'4','8','16','32','64','128','256','512','1024','2048'})
%ylim([10 26]);
  
% xlim([2 2048]);
  hold on 

  