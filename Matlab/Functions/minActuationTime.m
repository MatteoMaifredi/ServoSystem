function [T,lambda1,lambda3] = minActuationTime(A,D,V,dS)

t1 = V/A; 
t3 = V/D;
t2 = dS/V - 1/2*V*(A+D)/(A*D);

if t2 <= 0
   t1 = sqrt(D/A*(2*dS)/(A+D));
   t2 = 0;
   t3 = sqrt(A/D*(2*dS)/(A+D));
end

T = t1+t2+t3; lambda1 = t1/T; lambda3 = t3/T;
end

