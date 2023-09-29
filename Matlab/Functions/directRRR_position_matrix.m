function [P] = directRRR_position_matrix(L, Q)
%Direct kinematics with the 4x4 matrix approach

l1=L(1);
l2_o=L(2);
l3=L(3);
l4=L(4);

alfa = Q(1);
beta = Q(2);
gamma = Q(3);

teta = pi/4;


%Create M matrix, the last raw ([0 0 0 1]) is standard.
M01 = [[1 0 0 l1*cos(alfa) ]; [0 1 0 0]; [0 0 1 -l1*sin(alfa)]; [0 0 0 1]];
M12 = [[1 0 0 l2_o]; [0 1 0 0]; [0 0 1 0]; [0 0 0 1]];
M22a = [[cos(teta) 0 sin(teta) 0]; [0 1 0 0]; [-sin(teta) 0 cos(teta) 0]; [0 0 0 1]];
M22b = [[cos(beta) -sin(beta) 0 0]; [sin(beta) cos(beta) 0 0]; [0 0 1 0];  [0 0 0 1]];
M23 = [[1 0 0 l3*cos(teta)]; [0 1 0 0]; [0 0 1 l3*sin(teta)];  [0 0 0 1]];
M33 = [[cos(gamma-teta) 0 sin(gamma-teta) 0]; [0 1 0 0]; [-sin(gamma-teta) 0 cos(gamma-teta) 0]; [0 0 0 1]];
M34 = [[1 0 0 l4]; [0 1 0 0]; [0 0 1 0]; [0 0 0 1]];

M04 = M01*M12*M22a*M22b*M23*M33*M34;
%find the complessive rotation and report to the main frame (Combination of
%rotation)

P = M04(1:3,4);     %Select last coloumn for position (Gripper)

end