openfig('Workspace of PUMA560 robot generated by 7 subspace models');
title("");
ct=1;
fac = [1 2 6 5;2 3 7 6;3 4 8 7;4 1 5 8;1 2 3 4;5 6 7 8];
color =['y','m','c','r','g','b','k'];
for i=-1:0.3:1
vert = [-1 -1 i;...
        1 -1 i;...
        1 1 i;...
        -1 1 i;...
        -1 -1 i+0.2;...
        1 -1 i+0.2;...
        1 1 i+0.2;...
        -1 1 i+0.2];
h(ct)=patch('vertices',vert,'Faces',fac,'FaceAlpha',0.1,'FaceColor',color(ct));
hold on
ct=ct+1;
end
legend('Predictions','Subspace 1','Subspace 2','Subspace 3','Subspace 4','Subspace 5','Subspace 6','Subspace 7')
%{
vert = [-1 -1 0.8;...
        1 -1 0.8;...
        1 1 0.8;...
        -1 1 0.8;...
        -1 -1 1;...
        1 -1 1;...
        1 1 1;...
        -1 1 1];
%}