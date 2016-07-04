function randomSurface()
Z0 = rand(5);
vec = 1:5;
vec2 = 1:.1:5;
[X0,Y0] = meshgrid(vec);
[X1,Y1] = meshgrid(vec2);
Z1 = interp2(X0,Y0,Z0,X1,Y1,'cubic');
surf(Z1);
colormap hsv;
colorbar;
shading interp;
hold on;
contour(Z1);
caxis([0,1]);
saveas(gcf,'RandomSurface.png');
end