clc,clear all,close all

fileID = fopen('mesh_coarse.txt','w');

fprintf(fileID,'<< --- 2D STRESS ANALYSIS USING QUAD --- >>\n');
fprintf(fileID,'COARSE MESH WITH 20 elements\n');
fprintf(fileID,'<< NN NE NM NDIM NEN NDN >>\n');
fprintf(fileID,'33 20 1 2 4 2\n')	;
fprintf(fileID,'<< ND NL NMPC >>\n');	
fprintf(fileID,'6 1 0\n');

fprintf(fileID,'<< Node# Coordinates >>\n');

x=0:0.01:0.1;
y=0:0.005:0.01;
count=1;
nn=1;
for i=1:length(x)

for j = 1:length(y)
fprintf(fileID,'%d %f %f\n',nn,x(i),y(j));
count=count+1;
if count==3
count=1;
end
nn=nn+1;
end
end

fprintf(fileID,"<< Elem# Nodes Mat# Thickness TempRise >>\n");
nen=20;

diff=0;

ln = 1;
count =1;
for i=1:nen
     
    fprintf(fileID,'%d %d %d %d %d %d %d %d\n',i,ln,ln+3,ln+4,ln+1,1,1,0);
     count=count+1;
     
     if mod(i,2)~=0
      ln=ln+1;
     else
       ln=ln+2;
     end


     if count>2
         count=1;
    end
end

fprintf(fileID,"<< DOF# Displacement >>\n");

for i=1:6
fprintf(fileID,'%d %d\n',i,0);
end
 
fprintf(fileID,"<< DOF# Load >>\n");
fprintf(fileID,"66 -1000\n");
fprintf(fileID,"<< MAT# E Nu Alpha >>\n");
fprintf(fileID,"1 1E4 0.499 12E-6\n");
fprintf(fileID,"B1 i B2 j B3 (Multi-point constr. B1*Qi+B2*Qj=B3)\n");



fclose(fileID);