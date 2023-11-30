x = 0:0.01:1;
y1 = sin(x) + tan(x); 
y2 = sin(0.5)+tan(0.5)+((cos(0.5).^3+1)/cos(0.5).^2)*(x-0.5); 
disp (y2)
plot (x,y1,x,y2)
grid
