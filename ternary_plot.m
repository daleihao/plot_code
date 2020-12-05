xs = [];
ys = [];
cs = [];
for c1 = 0:0.01:1
    for c2 = 0:0.01:(1-c1)
        
        x=0.5-c1*cos(pi/3)+c2/2;
        y=0.866-c1*sin(pi/3)-c2*cot(pi/6)/2;
        xs = [xs; x];
        ys = [ys; y];
        cs = [cs; [c1 c2 1-c1-c2]];
    end
end


scatter(xs, ys, 50, cs,'^','filled')
axis off
