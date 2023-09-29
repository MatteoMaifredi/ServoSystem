function [] = plotWs_XY()

load RRR_wk_points.mat
load RRR_data.mat
load RRR_ws_dv_constrain.mat

space_XY=zeros(Xdiv,Ydiv);
for i = 2:Xdiv-1
    for j = 2:Ydiv-1
        for k = 2:Zdiv-1
            if(space(i,j,k)==1)
                if(space(i-1,j,k)==0 || space(i,j-1,k)==0 || space(i,j,k-1)==0 || space(i+1,j,k)==0 || space(i,j+1,k)==0 || space(i,j,k+1)==0)
                    space_XY(i,j)=1;
                end
            end
        end
    end
end
space_XY_ext=zeros(Xdiv,Ydiv);
for i = 2:Xdiv-1
    for j = 2:Ydiv-1
            if(space_XY(i,j)==1)
                if(space_XY(i-1,j)==0 || space_XY(i,j-1)==0 ||  space_XY(i+1,j)==0 || space_XY(i,j+1)==0)
                    space_XY_ext(i,j)=1;
                end
            end
    end
end
p=1;
point2plot=nan(2,Xdiv*Ydiv);
for i = 1:Xdiv
    for j = 1:Ydiv
        if(space_XY_ext(i,j)==1)
            point2plot(:,p)=[X(i) Y(j)]';
            p=p+1;
        end
    end
end
figure(1)
plot(point2plot(1,:),point2plot(2,:),'k.')
% hold on
% TR4_plot_cXY(link, 0, 0, 0);
axis equal

xlabel("X $[m]$","FontSize",30,"Interpreter","latex") %NOI
ylabel("Y $[m]$","FontSize",30,"Interpreter","latex") %NOI

end