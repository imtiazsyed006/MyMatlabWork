l1 = 4;
l2 = 3;

th1 = 20;
th2 = 30;

x0 = 0;
y0 = 0;

x1 = l1*cosd(th1);
y1 = l1*sind(th1);

x2 = x1 + l2*cosd(th2+th1);
y2 = y1 + l2*sind(th2+th1);

X1 = [x0,x1];
Y1 = [y0,y1];

X2 = [x1,x2]; 
Y2 = [y1,y2];
p1 = line(X1,Y1,'LineWidth',4);
hold on
plot(0,0,'o','LineWidth',2,'MarkerFaceColor','r','MarkerSize',10,'MarkerEdgeColor','r')
ph = plot(x1,y1,'o','LineWidth',2,'MarkerFaceColor','r','MarkerSize',10,'MarkerEdgeColor','r')
p2 = line(X2,Y2,'LineWidth',4);
xlim([0,7])
ylim([0,7])
axis equal
% p1 = plot([x0 x1],[y0,y1])
% hold on
% p2 = plot([x1,x2],[y1,y2])
% hold off

xp = [];
yp = [];
pause();
i = 1; 
for t = 0:0.1:2*pi
    
    x = 3 + 1*cos(t);
    y = 5 + 1*sin(t);
    
    xp(i) = x;
    yp(i) = y;
    i = i + 1;
    Costh2 = (x^2 + y^2 - l1^2 - l2^2)/(2*l1*l2);
    Sinth2 = sqrt(1-Costh2^1);
    th2 = atan2(Sinth2,Costh2);

    k1 = l1 + l2*cos(th2);
    k2 = l2*sin(th2);

    th1 = atan2(y,x)-atan2(k2,k1);

    x0 = 0;
    y0 = 0;

    x1 = l1*cos(th1);
    y1 = l1*sin(th1);

    x2 = x1 + l2*cos(th2+th1);
    y2 = y1 + l2*sin(th2+th1);

    x1 = l1*cos(th1);
    y1 = l1*sin(th1);

    x2 = x1 + l2*cos(th2+th1);
    y2 = y1 + l2*sin(th2+th1);

    X1 = [x0,x1];
    Y1 = [y0,y1];

    X2 = [x1,x2];
    Y2 = [y1,y2];

    set(p1,'X',X1,'Y',Y1)
    set(p2,'X',X2,'Y',Y2)
    ph.XData = x1;
    ph.YData = y1;
    drawnow
    pause(0.1);
    plot(xp,yp,'r','LineStyle','--')
    
end

% p1 = plot([x0 x1],[y0,y1],'LineWidth',2)
% hold on
% p2 = plot([x1,x2],[y1,y2],'LineWidth',2)
