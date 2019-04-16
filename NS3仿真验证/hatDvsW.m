
n=50;
%w=16;
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
           
                 
pa1=zeros(1,10);
PL1=zeros(1,10);
pa2=zeros(1,10);
PL2=zeros(1,10);

  throughputB=zeros(1,10);
  throughputR=zeros(1,10);
  
  i=0;
  %q=1/2;
  %L=5000;
 % L=400:400:4000
  %for  n=5:5:50
 for g=2:1:11
      i=i+1;
      w=power(2,g);
%RtauF=((RTS/Vc+DIFS+delte)/timeslot+2e-05/timeslot);  
%pa=fzero(@(p)exp(-n/((((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot)*p+((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot)*(1-p))/(1+((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot)-((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot)*p-(((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot)-((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot))*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.399)
   %  pa2(i)=pa;
%PL=((160/Vc*(1-pa)-(112/Vc+72e-06)*pa*log(pa))/(1-pa+pa*log(pa))*Vp-288)
%pa=fzero(@(p)exp(-n/((((H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+4e-05/timeslot)*p+((H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+33e-06+DIFS+delte)/timeslot+4e-05/timeslot)*(1-p))/(1+((H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+4e-05/timeslot)-((H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+4e-05/timeslot)*p)+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.399)
%pa=fzero(@(p)exp(-2*n/(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k)))-p,[0,1]);
%BtauF=((H/Vp+L/Vp+DIFS+delte)/timeslot+2e-05/timeslot)
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.1)
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.399)
     % pa1(i)=pa;
%PL=((160/Vc*(1-pa)-(112/Vc+72e-06)*pa*log(pa))/(1-pa+pa*log(pa))*Vp-288)
%L=PL;
%PL1(i)=PL;
L=1023*8;
PL=1023*8;
BtauT=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot);
BtauF=BtauT;
%BtauF=((H+L/Vp+DIFS+ACK+SIFSdelte)/timeslot)
%BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte+timeslot)/timeslot)
%BtauF=BtauT;
%BtauF=((H+L/Vp+69)/timeslot)

%BtauF=((H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot)

%BtauF=((H+L/Vp+SIFS+delte+44+DIFS+delte)/timeslot)
%BtauF=BtauT;
%BtauF=((H/Vp+L/Vp+DIFS+delte)/timeslot+2e-05/timeslot)
%pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.1)
pa=fzero(@(p)exp(-n/((BtauT*p+BtauF*(1-p))/(1+BtauF-BtauF*p-(BtauT-BtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.96])

%pa=fzero(@(p)exp(-n/(1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0 1])
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))



%RtauF=((RTS/Vc+DIFS+delte)/timeslot+2e-05/timeslot);  
%pa=fzero(@(p)exp(-n/((((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot)*p+((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot)*(1-p))/(1+((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot)-((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot)*p-(((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+((160/Vc*(1-p)-(112/Vc+72e-06)*p*log(p))/(1-p+p*log(p))*Vp-288)/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot)-((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot))*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,0.399)
   %  pa2(i)=pa;
%PL=((160/Vc*(1-pa)-(112/Vc+72e-06)*pa*log(pa))/(1-pa+pa*log(pa))*Vp-288)
%L=PL;
%PL2(i)=PL;
%RtauT=((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+L/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot);%success slot RTS taoT

%RtauF=((RTS/Vc+DIFS+delte+SIFS+33e-06+delte)/timeslot+4e-05/timeslot);
%RtauF=((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot); 

%throughputR(i)=(-pa*log(pa)*L)/(timeslot*(1+RtauF-RtauF*pa-(RtauT-RtauF)*pa*log(pa)))/1000000
  end
 % n=[5:5:50];
  % w=[2:2:2048];
  % w=[2 4 8 16 32 64 128 256 512 1024 2048];
  w=[2 3 4 5 6 7 8 9 10 11];
   %   L=[400:400:4000];
  plot(w, throughputB,'--r')
  hold on
  
% L=1023*8;
%PL=1023*8;
%BtauT=((H/Vp+L/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+4e-05/timeslot)
%BtauF=BtauT;
%a=(1+1/BtauF)*lambertw(-1/exp(1)/(1+1/BtauF));
 % w=2*n*(1+2*a)/(-a*log(-a))
 %pa=fzero(@(p)exp(-2*n/(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k)))-p,[0,1]);
%BtauF=((H/Vp+L/Vp+delte+DIFS)/timeslot+2e-05/timeslot)
%throughputD=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))/1000000;
 %plot(w, throughputD,'ok')
 %xlim([2 2048]);
  %hold on 
 % w=[2 4 8 16 32 64 128 256 512 1024 2048];
 % ind=1:length(w);
 % set(gca,'XTick',ind);
  %set(gca,'XTick',[2 4 8 16 32 64 128 256 512 1024 2048]);
 % set(gca,'XTick',[1:11]);
% set(gca,'XTicklabel',{'2','4','8','16','32','64','128','256','512','1024','2048'})
  hold on
%  w=[4, 8,16,32,64,128,256,512,1024,2048];
T=[14.0338 15.9293 17.9472 19.7162 21.3375 22.7525 23.5865 23.4532 21.4958 17.136];
plot(w,T,'ok');
hold on
set(gca,'XTicklabel',{'4','8','16','32','64','128','256','512','1024','2048'})
  