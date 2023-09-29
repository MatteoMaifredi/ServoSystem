function plotRRR_3D(L, Q)


l1=L(1);
l2_o=L(2);
l3=L(3);
l4=L(4);


alfa = Q(1);
beta = Q(2);
gamma = Q(3);
teta = pi/4;

x0 = 0;
y0 = 0;
z0 = 0;

l0=0.5;
l2_v=0.5;


%plot3ta cerniere a terra
plot3(x0,y0, z0-l0/2, 'or')
hold on
plot3(x0,y0, z0+l0/2, 'or')
hold on


%plot3ta link1 alto
plot3([x0 x0+l1*cos(alfa)], [y0 y0], [z0+l0/2 z0+l0/2-l1*sin(alfa)], 'b', 'LineWidth', 2)
hold on

%plot3ta link1 basso
plot3([x0 x0+l1*cos(alfa)], [y0 y0],[z0-l0/2 z0-l0/2-l1*sin(alfa)], 'b', 'LineWidth', 2)
hold on

%plot3ta cerniere estremo dx link1
plot3(x0+l1*cos(alfa),y0, z0+l0/2-l1*sin(alfa), 'or')
hold on
plot3(x0+l1*cos(alfa),y0, z0-l0/2-l1*sin(alfa), 'or')
hold on


%plot3ta link2_v
plot3([x0+l1*cos(alfa) x0+l1*cos(alfa)], [y0 y0], [z0+l0/2-l1*sin(alfa) z0+l0/2-l1*sin(alfa)-l2_v],'b', 'LineWidth', 2)
hold on

%plot3ta link 2 orizzontale
plot3([x0+l1*cos(alfa) x0+l1*cos(alfa)+l2_o], [y0 y0],[z0+l0/2-l1*sin(alfa)-l2_v/2 z0+l0/2-l1*sin(alfa)-l2_v/2], 'b', 'LineWidth', 2)
hold on

%plot3ta cerniera estremo dx l2_o
plot3(x0+l1*cos(alfa)+l2_o,y0, z0+l0/2-l1*sin(alfa)-l2_v/2, 'or')
hold on


%plot3ta link 3
plot3([x0+l1*cos(alfa)+l2_o x0+l1*cos(alfa)+l2_o+l3-l3*(cos(teta))^2+l3*cos(beta)*(cos(teta))^2],[y0 y0+l3*cos(teta)*sin(beta)], [z0+l0/2-l1*sin(alfa)-l2_v/2 z0-l1*sin(alfa)+l3*cos(teta)*sin(teta)-l3*cos(beta)*cos(teta)*sin(teta)],'b', 'LineWidth', 2)
hold on

%plot3ta cerniera estremo dx link 3
plot3(x0+l1*cos(alfa)+l2_o+l3-l3*(cos(teta))^2+l3*cos(beta)*(cos(teta))^2,y0+l3*cos(teta)*sin(beta),z0-l1*sin(alfa)+l3*cos(teta)*sin(teta)-l3*cos(beta)*cos(teta)*sin(teta), 'or')
hold on

%plot3ta link 4
plot3([x0+l1*cos(alfa)+l2_o+l3-l3*(cos(teta))^2+l3*cos(beta)*(cos(teta))^2 x0+l1*cos(alfa)+l2_o+l3-l3*(cos(teta))^2+l3*cos(beta)*(cos(teta))^2+l4/2*cos(gamma)-l4/2*cos(2*teta-gamma)+l4*cos(teta-gamma)*cos(beta)*cos(teta)],[y0+l3*cos(teta)*sin(beta) y0+l3*cos(teta)*sin(beta)+l4*cos(gamma-teta)*sin(beta)],[z0-l1*sin(alfa)+l3*cos(teta)*sin(teta)-l3*cos(beta)*cos(teta)*sin(teta) z0-l1*sin(alfa)+l3*cos(teta)*sin(teta)-l3*cos(beta)*cos(teta)*sin(teta)+l4*sin(teta-gamma)*cos(teta)-l4*cos(teta-gamma)*cos(beta)*sin(teta)],'b', 'LineWidth', 2)
hold on

%plot3ta end-effector
plot3(x0+l1*cos(alfa)+l2_o+l3-l3*(cos(teta))^2+l3*cos(beta)*(cos(teta))^2+l4/2*cos(gamma)-l4/2*cos(2*teta-gamma)+l4*cos(teta-gamma)*cos(beta)*cos(teta),y0+l3*cos(teta)*sin(beta)+l4*cos(gamma-teta)*sin(beta),z0-l1*sin(alfa)+l3*cos(teta)*sin(teta)-l3*cos(beta)*cos(teta)*sin(teta)+l4*sin(teta-gamma)*cos(teta)-l4*cos(teta-gamma)*cos(beta)*sin(teta), '*g')














end