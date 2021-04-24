
clc
clear all

xp = 1;
yp =  3;

d = 4;
l1 = 2.5;
l2 = 4.0;
l3 = 4.0/2;
l4 = 2.5;
l5 = 4.0/2;

CosTh_5 = (xp^2 + yp^2 - l4^2 - l5^2)/(2*l4*l5);
SinTh_5 = -sqrt(1-CosTh_5^2);
Th_5 = atan2(SinTh_5,CosTh_5);
Th_5*180/3.14

k1 = l4 + l5*CosTh_5;
k2 = l5*SinTh_5;
Th_4 = atan2(yp,xp) - atan2(k2,k1);
Th_4*180/3.14
x4 = 0;
y4 = 0.0;

x5 = l4*cos(Th_4);
y5 = l4*sin(Th_4);

x6 = x5 + l5*cos(Th_5 + Th_4);
y6 = y5 + l5*sin(Th_5 + Th_4);

X4 = [x4,x5];
Y4 = [y4,y5];

X5 = [x5,x6];
Y5 = [y5,y6];

SinTh_5 = sqrt(1-CosTh_5^2);
Th_5 = atan2(SinTh_5,CosTh_5);
Th_5*180/3.14

Phi = Th_4 + pi - Th_5;
CosTh_2 = ((xp - l3*cos(Phi) - d)^2 + (yp - l3*sin(Phi))^2 -l1^2-l2^2)/(2*l1*l2);
SinTh_2 = sqrt(1-CosTh_2^2);

Th_2 = atan2(SinTh_2,CosTh_2);
Th_2*180/3.14

k3 = l1 + l2*CosTh_2;
k4 = l2*SinTh_2;
Th_1 = atan2(yp - l3*sin(Phi),xp - l3*cos(Phi) - d) - atan2(k4,k3);
Th_1*180/3.14
Th_3 = Phi  - Th_1 - Th_2;
Th_3*180/3.14

x = [0,4,4,0];
y = [0,0,0.01,0.01];


fill(x,y,'r')
hold on
xlim([-3.5,7])
ylim([0,5])
axis equal
x0 = d;
y0 = 0.0;

x1 = d+l1*cos(Th_1);
y1 = l1*sin(Th_1);

x2 = x1 + l2*cos(Th_1+Th_2);
y2 = y1 + l2*sin(Th_1+Th_2);

x3 = x2 + l3*cos(Phi);
y3 = y2 + l3*sin(Phi);



X1 = [x0,x1];
Y1 = [y0,y1];

X2 = [x1,x2];
Y2 = [y1,y2];

X3 = [x2,x3];
Y3 = [y2,y3];



p1 = plot(X1,Y1,'LineWidth',2);
p2 = plot(X2,Y2,'LineWidth',2);
p3 = plot(X3,Y3,'LineWidth',2);

p4 = plot(X4,Y4,'LineWidth',2);

p5 = plot(X5,Y5,'LineWidth',2);

p6 = plot(x3,y3,'s','LineWidth',2,'MarkerFaceColor','r','MarkerSize',5,'MarkerEdgeColor','r');
p7 = plot(x0,y0,'o','LineWidth',2,'MarkerFaceColor','r','MarkerSize',5,'MarkerEdgeColor','r');

p9 = plot(x2,y2,'o','LineWidth',2,'MarkerFaceColor','r','MarkerSize',5,'MarkerEdgeColor','r');
p10 = plot(x4,y4,'o','LineWidth',2,'MarkerFaceColor','k','MarkerSize',8,'MarkerEdgeColor','k');
p11 = plot(x5,y5,'o','LineWidth',2,'MarkerFaceColor','k','MarkerSize',8,'MarkerEdgeColor','k');
p8 = plot(x1,y1,'o','LineWidth',2,'MarkerFaceColor','r','MarkerSize',5,'MarkerEdgeColor','r');

pause()
i = 1;

for t = 0:0.1:2*pi
    
    xp = 1+1*cos(t);
    yp = 3+1*sin(t);
    
    xpp(i) = xp;
    ypp(i) = yp;
    i = i + 1;
    CosTh_5 = (xp^2 + yp^2 - l4^2 - l5^2)/(2*l4*l5);
    SinTh_5 = -sqrt(1-CosTh_5^2);
    Th_5 = atan2(SinTh_5,CosTh_5);

    k1 = l4 + l5*CosTh_5;
    k2 = l5*SinTh_5;
    Th_4 = atan2(yp,xp) - atan2(k2,k1);

    x4 = 0;
    y4 = 0.0;

    x5 = l4*cos(Th_4);
    y5 = l4*sin(Th_4);

    x6 = x5 + l5*cos(Th_5 + Th_4);
    y6 = y5 + l5*sin(Th_5 + Th_4);

    X4 = [x4,x5];
    Y4 = [y4,y5];

    X5 = [x5,x6];
    Y5 = [y5,y6];

    SinTh_5 = sqrt(1-CosTh_5^2);
    Th_5 = atan2(SinTh_5,CosTh_5);

    Phi = Th_4 + pi - Th_5;
    CosTh_2 = ((xp - l3*cos(Phi) - d)^2 + (yp - l3*sin(Phi))^2 -l1^2-l2^2)/(2*l1*l2);
    SinTh_2 = sqrt(1-CosTh_2^2);

    Th_2 = atan2(SinTh_2,CosTh_2);

    k3 = l1 + l2*CosTh_2;
    k4 = l2*SinTh_2;
    Th_1 = atan2(yp - l3*sin(Phi),xp - l3*cos(Phi) - d) - atan2(k4,k3);
    Th_3 = Phi  - Th_1 - Th_2;

    x = [0,4,4,0];
    y = [0,0,0.01,0.01];

    x1 = d+l1*cos(Th_1);
    y1 = l1*sin(Th_1);

    x2 = x1 + l2*cos(Th_1+Th_2);
    y2 = y1 + l2*sin(Th_1+Th_2);

    x3 = x2 + l3*cos(Phi);
    y3 = y2 + l3*sin(Phi);



    X1 = [x0,x1];
    Y1 = [y0,y1];

    X2 = [x1,x2];
    Y2 = [y1,y2];

    X3 = [x2,x3];
    Y3 = [y2,y3];

    p1.XData = X1;
    p1.YData = Y1;
    
    p2.XData = X2;
    p2.YData = Y2;
    
    p3.XData = X3;
    p3.YData = Y3;
    
    p4.XData = X4;
    p4.YData = Y4;
    
    p5.XData = X5;
    p5.YData = Y5;
    
    p6.XData = x3;
    p6.YData = y3;
    
    p7.XData = x0;
    p7.YData = y0;
    
    p8.XData = x1;
    p8.YData = y1;
    
    p9.XData = x2;
    p9.YData = y2;
    
    p10.XData = x4;
    p10.YData = y4;
    
    p11.XData = x5;
    p11.YData = y5;
    
    drawnow
    pause(0.1);
    plot(xpp,ypp,'r','LineStyle','--')
    
end


