x = 0:0.01:4;
y1 = sin(x) + x.^3; 
y2 = sin(2)+8+(cos(2)+12)*(x-2); 
plot (x,y1,x,y2)
grid
