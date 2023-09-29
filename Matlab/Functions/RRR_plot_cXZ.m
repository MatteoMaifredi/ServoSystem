function [] = RRR_plot_cXZ(link, alfa, beta, gamma)

l1=link(1);
l2=link(2); %L2_o 
l3=link(3);
l4=link(4);

x0=0;
z0=0;
l0=0.5;

plot(x0,z0,'*g', 'LineWidth',3) %Origine sistema riferimento
hold on  
plot([x0 x0+l1*cos(alfa)],[z0-l0/2 z0-l0/2-l1*sin(alfa)],'b', 'LineWidth',3) %Tratto l1 basso
hold on 
plot([x0 x0+l1*cos(alfa)],[z0+l0/2 z0+l0/2-l1*sin(alfa)],'b', 'LineWidth',3)
hold on
plot(l1*cos(alfa),z0-l0/2-l1*sin(alfa),'or', 'LineWidth',3) %Cerniera l1-l2 bassa
hold on 
plot(l1*cos(alfa),z0+l0/2-l1*sin(alfa),'or', 'LineWidth',3) %Cerniera l1-l2 alta
hold on 
plot([x0+l1*cos(alfa) x0+l1*cos(alfa)],[z0-l0/2-l1*sin(alfa) z0+l0/2-l1*sin(alfa)],'b', 'LineWidth',3) %Tratto l2 verticale
hold on
plot([x0+l1*cos(alfa) x0+l1*cos(alfa)+l2],[z0-l1*sin(alfa) z0-l1*sin(alfa)],'b', 'LineWidth',3) %Tratto l2
hold on
plot(x0+l1*cos(alfa)+l2,z0-l1*sin(alfa),'*r', 'LineWidth',3) %Cerniera l2-l3
hold on 
plot([x0+l1*cos(alfa)+l2 x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta)],[z0-l1*sin(alfa) z0-l1*sin(alfa)+l3/2-l3/2*cos(beta)],'b', 'LineWidth',3) %Tratto l3
hold on 
plot(x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta),z0-l1*sin(alfa)+l3/2-l3/2*cos(beta),'or', 'LineWidth',3) %Cerniera l3-l4
hold on
plot([x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta) x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta)+l4/2*cos(gamma)-l4/2*sin(gamma)+l4/2*cos(beta)*cos(gamma)+l4/2*cos(beta)*sin(gamma)],[z0-l1*sin(alfa)+l3/2-l3/2*cos(beta) z0-l1*sin(alfa)+l3/2-l3/2*cos(beta)+l4/2*cos(gamma)-l4/2*sin(gamma)-l4/2*cos(beta)*cos(gamma)-l4/2*sin(gamma)*cos(beta)],'b', 'LineWidth',3) %Tratto l4
hold on 
plot(x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta)+l4/2*cos(gamma)-l4/2*sin(gamma)+l4/2*cos(beta)*cos(gamma)+l4/2*cos(beta)*sin(gamma),z0-l1*sin(alfa)+l3/2-l3/2*cos(beta)+l4/2*cos(gamma)-l4/2*sin(gamma)-l4/2*cos(beta)*cos(gamma)-l4/2*sin(gamma)*cos(beta),'squarek','LineWidth',3) %End-Effector

end

