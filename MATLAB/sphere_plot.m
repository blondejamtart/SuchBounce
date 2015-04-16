[x y z] = sphere;

figure

surf(rad(1)*x-r(1,1,1),rad(1)*z-r(1,1,3),rad(1)*y-r(1,1,2))%,'EdgeColor','none')

hold on

for i = 2:512
    surf(rad(i)*x-r(1,i,1),rad(i)*z-r(1,i,3),rad(i)*y-r(1,i,2))%,'EdgeColor','none')
    
end
axis equal