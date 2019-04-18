ns3B=[14.1656,19.9647,23.0796,24.913,26.2668,27.2865,27.9454,28.642,29.0934,29.456];
 ns3R=[11.3819,18.8396,24.092,27.8176,30.835,33.212,35.1736,36.8024,38.1429,39.327];
 
 ns3B5466=[12.253 17.3035 19.9684 21.5504 22.6945 23.5791 24.1283 24.7752 25.164 25.4225];
 ns3R5466=[10.4857 17.5909 22.6972 26.4636 29.46 31.8891 33.866 35.5768 36.9877 38.193];
 
 ns3B54=[28.6686 26.6893 25.4555 24.579 23.845 23.2938 22.6925 22.2348 21.876 21.4489];
 ns3R54=[11.3819,18.8396,24.092,27.8176,30.835,33.212,35.1736,36.8024,38.1429,39.327];
 
 B12=[8.8193 8.1157 7.7120 7.4229 7.1938 7.0018 6.8351 6.6870 6.5529 6.4300];
 
B54=[28.6388 26.6480 25.4344 24.5447 23.8301 23.2258 22.6976 22.2254 21.7964 21.4016];
 R54=[11.3819,18.8396,24.092,27.8176,30.835,33.212,35.1736,36.8024,38.1429,39.327];
 
 ns3B28=[14.1656,19.9647,23.0796,24.913,26.2668,27.2865,27.9454,28.642,29.0934,29.456];
 ns3R28=[11.3819,18.8396,24.092,27.8176,30.835,33.212,35.1736,36.8024,38.1429,39.327];
 
  ns3B6=[4.63968 4.2768 4.05768 3.88548 3.768 3.6536 3.54384 3.46008 3.3816 3.31368];
 ns3R54=[11.3819,18.8396,24.092,27.8176,30.835,33.212,35.1736,36.8024,38.1429,39.327];
B6=[4.6782 4.2817 4.0522 3.8816 3.7547 3.6436 3.5468 3.4605 3.3821 3.3099];
 R54=[11.3819,18.8396,24.092,27.8176,30.835,33.212,35.1736,36.8024,38.1429,39.327];
 
% BA=[37.5969 32.1527 29.1973 27.0987 25.4195 24.227 23.2621 22.3347 21.6075 20.912];
 %RT=[36.5873 31.3107 28.3914 26.3914 24.7826 23.5803 22.5784 21.6984 21.0055 20.3172 ];
 
 BA=[38.4914 32.5736 29.3101 27.3043 25.6679 24.3417 23.2968 22.5671 21.5039 21.0605];
 RT=[38.3366 32.0909 28.7687 26.7451 25.1088 23.7751 22.7227 21.9241 21.0295 20.4614 ];
 
 ns3B546=[7.61146 12.4748 15.5844 18.0512 19.9299 21.504 22.4374 23.4366 24.3508 24.9122];
 ns3R546=[5.2181 9.5422 13.0726 16.15 18.8329 21.1718 23.0502 24.864 26.5048 27.8152];
 
 % ns3B546=[7.5978 12.4129 15.5348 18.007 19.881 21.4061 22.328 23.443 24.3288 24.72784];
 %ns3R546=[5.20798 9.5306 13.0466 16.1359 18.8062 21.1306 23.0683 24.8592 26.4872 27.7758];
 
 
  ns3B246=[5.66348 8.30116 9.73074 10.6457 11.2609 11.7239 12.0968 12.3942 12.6522 12.8274];
 ns3R246=[4.55278 7.70096 9.95496 11.6398 12.9634 14.0399 14.891 15.6973 16.3228 16.8492];
 
 ns3B5454=[4.22549 7.62194 10.1697 12.4826 14.1814 15.5873 17.0706 18.0716 18.9042 19.973];
 ns3R5454=[3.26473 6.2068 8.7738 11.1772 13.2249 15.0732 16.9116 18.4319 19.8138 21.2669];
 
 ns3B2454=[3.54338 5.66828 7.19139 8.29592 9.05265 9.7272 10.1588 10.6172 11.0207 11.2701];
 ns3R2454=[2.99132 5.2924 7.17684 8.7292 9.96105 11.0653 11.951 12.7789 13.5096 14.0875];
% hold on
 n=[5:5:50];
%  L=[5000:5000:50000];
 % plot(n, B6,'ob')
%L=[250:250:2500];
%L=[125:125:1250];
%plot(L, ns3B5454,'ob')
%hold on
%plot(L, ns3R5454,'*r')
%%plot(L, ns3B2454,'ob')
%%plot(L, ns3R2454,'*r')
%hold on
L=[250:250:2500];
plot(L, ns3B546,'ok')
hold on
plot(L, ns3R546,'*k')
hold on
plot(L, ns3B246,'ok')
hold on
plot(L, ns3R246,'*k')
hold on
 %plot(n, B54,'ob')
hold on
%plot(n, BA,'ob')
hold on
%plot(n, RT,'*r')
hold on
%legend('Model','ns-3')

%plot(n, B6,'-b')
%hold on
%plot(L, ns3B,'ob')
hold on
%plot(L, ns3R,'*r')
%rts threshold before
%plot(1419, 21.0363,'ok')
%hold on
%plot(1419, 20.4586,'*k')
%hold on
%plot(611, 8.95917,'ok')
%hold on
%plot(611, 8.74629,'*k')

%1403 and 604
plot(1419, 21.0363,'ok')
hold on
plot(1419, 20.4586,'*k')
hold on
plot(611, 8.95917,'ok')
hold on
plot(611, 8.74629,'*k')
hold on
%ylim([5 25]);
xlim([250 2500]);
set(gca,'xtick',250:250:2500);
%legend('Rohan model1','Bianchi model2','3','4')
hold on;
n=50;
w=16;
q=0.5;
k=6;

Vp=24;
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
                 

  throughputB=zeros(1,10);
  throughputR=zeros(1,10);

% throughputB=zeros(1,665);
%  throughputR=zeros(1,665);

  % throughputB=zeros(1,1587);
%  throughputR=zeros(1,1587);
  i=0;
  %L=5000;
 %for L=400:400:4000
  %for L=1000:1000:10000
%  for L=3200:3200:32000
    % for L=1000:1000:10000
      %   for L=7312:8:20000
      % for L=2000:8:7312
       for L=2000:2000:20000
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
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))

RtauT=((RTS+SIFS+delte+CTS+SIFS+delte+H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot)%success slot RTS taoT
RtauF=((RTS+DIFS+delte+SIFS+44+delte+timeslot)/timeslot)
%RtauF=((RTS+DIFS+delte+SIFS+44+delte)/timeslot)


%RtauT=((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+L/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot);%success slot RTS taoT
%RtauF=((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot); 
%RtauF=((RTS/Vc+DIFS+delte)/timeslot+2e-05/timeslot);  
pa=fzero(@(p)exp(-n/((RtauT*p+RtauF*(1-p))/(1+RtauF-RtauF*p-(RtauT-RtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.8]);
throughputR(i)=(-pa*log(pa)*L)/(timeslot*(1+RtauF-RtauF*pa-(RtauT-RtauF)*pa*log(pa)))
  end
% L=[5000:5000:50000];
 % L=[400:400:4000];
 % L=[125:125:1250];
 %  L=[250:1:914];
  % L=[914:1:2500];
   L=[250:250:2500];
 % L=[1000:1000:10000];
  %    L=[400:400:4000];
  plot(L, throughputB,'-k')
  hold on
  plot(L, throughputR,'--k')
 %xlim([125 1250]);
  xlim([250 2500]);
  hold on 
  set(gca,'xtick',250:250:2500);
 %legend('Rohan model','Bianchi model')
  
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
                 

  throughputB=zeros(1,10);
  throughputR=zeros(1,10);

% throughputB=zeros(1,665);
%  throughputR=zeros(1,665);

  % throughputB=zeros(1,1587);
%  throughputR=zeros(1,1587);
  i=0;
  %L=5000;
 %for L=400:400:4000
  %for L=1000:1000:10000
%  for L=3200:3200:32000
    % for L=1000:1000:10000
      %   for L=7312:8:20000
      % for L=2000:8:7312
       for L=2000:2000:20000
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
throughputB(i)=(-pa*log(pa)*L)/(timeslot*(1+BtauF-BtauF*pa-(BtauT-BtauF)*pa*log(pa)))

RtauT=((RTS+SIFS+delte+CTS+SIFS+delte+H+L/Vp+SIFS+delte+ACK+DIFS+delte)/timeslot)%success slot RTS taoT
RtauF=((RTS+DIFS+delte+SIFS+44+delte+timeslot)/timeslot)
%RtauF=((RTS+DIFS+delte+SIFS+44+delte)/timeslot)


%RtauT=((RTS/Vc+SIFS+delte+CTS/Vc+SIFS+delte+H/Vp+L/Vp+SIFS+delte+ACK/Vc+DIFS+delte)/timeslot+8e-05/timeslot);%success slot RTS taoT
%RtauF=((RTS/Vc+DIFS+delte+SIFS+ACK/Vc+delte)/timeslot+4e-05/timeslot); 
%RtauF=((RTS/Vc+DIFS+delte)/timeslot+2e-05/timeslot);  
pa=fzero(@(p)exp(-n/((RtauT*p+RtauF*(1-p))/(1+RtauF-RtauF*p-(RtauT-RtauF)*p*log(p))+1/2*(1+w*(q*p/(q+p-1)-(q*p/(q+p-1)-1)*((1-p)/q)^k))))-p,[0.001 0.8]);
throughputR(i)=(-pa*log(pa)*L)/(timeslot*(1+RtauF-RtauF*pa-(RtauT-RtauF)*pa*log(pa)))
  end
% L=[5000:5000:50000];
 % L=[400:400:4000];
 % L=[125:125:1250];
 %  L=[250:1:914];
  % L=[914:1:2500];
   L=[250:250:2500];
 % L=[1000:1000:10000];
  %    L=[400:400:4000];
  plot(L, throughputB,'-k')
  hold on
  plot(L, throughputR,'--k')
 %xlim([125 1250]);
  xlim([250 2500]);
  hold on 
  set(gca,'xtick',250:250:2500);
 legend('Rohan model','Bianchi model')
  