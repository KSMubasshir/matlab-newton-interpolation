function fy = Newtint_1505041(x,y,xref)

n = length(x);
mat = zeros(n,n); 
mat(:,1) = y(:);  

for j = 2:n 
    for i = 1:n-j+1 
        mat(i,j) = (mat(i+1,j-1)-mat(i,j-1))/(x(i+j-1)-x(i)); 
    end
end

xfunc = 1; 
fy = mat(1,1); 
for j = 1:n-1 
    xfunc = xfunc*(xref-x(j)); 
    fy = fy+mat(1,j+1)*xfunc; 
end