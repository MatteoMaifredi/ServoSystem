function [] = RRR_plot_cXY(link,alfa,beta,gamma)
l1=link(1);
l2=link(2); %L2_o 
l3=link(3);
l4=link(4);


x0=0;
y0=0;

plot(x0,y0,'*g', 'LineWidth',3) %Origine sistema riferimento
hold on  
plot([x0 x0+l1*cos(alfa)],[y0 y0],'b', 'LineWidth',3) %Tratto l1
hold on 
plot(l1*cos(alfa),y0,'or', 'LineWidth',3) %Cerniera l1-l2
hold on  
plot([x0+l1*cos(alfa) x0+l1*cos(alfa)+l2],[y0 y0],'b', 'LineWidth',3) %Tratto l2
hold on
plot(x0+l1*cos(alfa)+l2,y0,'*r', 'LineWidth',3) %Cerniera l2-l3
hold on 
plot([x0+l1*cos(alfa)+l2 x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta)],[y0 y0+l3*sqrt(2)/2*sin(beta)],'b', 'LineWidth',3) %Tratto l3
hold on 
plot(x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta),y0+l3*sqrt(2)/2*sin(beta),'or', 'LineWidth',3) %Cerniera l3-l4
hold on
plot([x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta) x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta)+l4/2*cos(gamma)-l4/2*sin(gamma)+l4/2*cos(beta)*cos(gamma)+l4/2*cos(beta)*sin(gamma)],[y0+l3*sqrt(2)/2*sin(beta) y0+l3*sqrt(2)/2*sin(beta)+l4*sin(gamma+pi/4)*sin(beta)],'b', 'LineWidth',3) %Tratto l4
hold on 
plot(x0+l1*cos(alfa)+l2+l3/2+l3/2*cos(beta)+l4/2*cos(gamma)-l4/2*sin(gamma)+l4/2*cos(beta)*cos(gamma)+l4/2*cos(beta)*sin(gamma),y0+l3*sqrt(2)/2*sin(beta)+l4*sin(gamma+pi/4)*sin(beta),'squarek','LineWidth',3) %End-Effector

end

