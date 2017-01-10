%% Analysis. The second section will calculate and plot the ground truth sphere. 
%%Emax=0, no rotation about x axis;
contour=zeros(25,2);
Emax=0;
[x,y]=simulator(Emax);
contour(:,1)=x;
contour(:,2)=y;

%  k = boundary(x,y);
%  hold on;
%  plot(x(k),y(k));
angles=[0 0; 0 deg2rad(45);0  deg2rad(90); 0 deg2rad(135);0  deg2rad(180); 0 deg2rad(225); 0 deg2rad(270); 0 deg2rad(315)]; 
[k, values,volume,A]=Reconstructor(angles,contour);
[x,y,z] = sphere;
ctr=[0 0 0];
radius=2.5;
hold on
trisurf(k,values(:,1),values(:,2),values(:,3),'Facecolor','red','FaceAlpha',0.1)
% m=mesh(radius*x+ctr(1),radius*y+ctr(2),radius*z+ctr(3),'EdgeColor','blue');
% set(m,'facecolor','none');
volumeGroundTruth=(4/3)*pi*(radius.^3);
volumeRatioNoX=volume/volumeGroundTruth
surfaceAreaGroundTruth=(4*pi*radius.^2);
surfaceAreaRatioNoX=A/surfaceAreaGroundTruth

pause


%%Ground Truth, Emax=0;
clear all

contour=zeros(25,2);
Emax=0;
[x,y]=simulator(Emax);
contour(:,1)=x;
contour(:,2)=y;

%  k = boundary(x,y);
%  hold on;
%  plot(x(k),y(k));
angles=[0 0; deg2rad(45) 0; deg2rad(-45) 0;0 deg2rad(45); deg2rad(45)  deg2rad(45); deg2rad(-45) deg2rad(45); 0  deg2rad(90); deg2rad(45) deg2rad(90); deg2rad(-45) deg2rad(90); 0 deg2rad(135); deg2rad(45) deg2rad(135); deg2rad(-45) deg2rad(135); 0  deg2rad(180); deg2rad(45) deg2rad(180);deg2rad(-45) deg2rad(180); 0 deg2rad(225); deg2rad(45) deg2rad(225); deg2rad(-45) deg2rad(225); 0 deg2rad(270); deg2rad(45) deg2rad(270); deg2rad(-45) deg2rad(270); 0 deg2rad(315); deg2rad(45) deg2rad(315); deg2rad(-45) deg2rad(315)]; 
[k, values,volume,A]=Reconstructor(angles,contour);
[x,y,z] = sphere;
ctr=[0 0 0];
radius=2.5;
hold on
trisurf(k,values(:,1),values(:,2),values(:,3),'Facecolor','red','FaceAlpha',0.1)
m=mesh(radius*x+ctr(1),radius*y+ctr(2),radius*z+ctr(3),'EdgeColor','blue');
set(m,'facecolor','none');
volumeGroundTruth=(4/3)*pi*(radius.^3);
volumeRatio=volume/volumeGroundTruth
surfaceAreaGroundTruth=(4*pi*radius.^2);
surfaceAreaRatio=A/surfaceAreaGroundTruth

pause

% %%%Emax =0.05 (5%)
close all
contour=zeros(25,2);
Emax=0.05;
[x,y]=simulator(Emax);
contour(:,1)=x;
contour(:,2)=y;

%  k = boundary(x,y);
%  hold on;
%  plot(x(k),y(k));
angles=[0 0; deg2rad(45) 0; deg2rad(-45) 0;0 deg2rad(45); deg2rad(45)  deg2rad(45); deg2rad(-45) deg2rad(45); 0  deg2rad(90); deg2rad(45) deg2rad(90); deg2rad(-45) deg2rad(90); 0 deg2rad(135); deg2rad(45) deg2rad(135); deg2rad(-45) deg2rad(135); 0  deg2rad(180); deg2rad(45) deg2rad(180);deg2rad(-45) deg2rad(180); 0 deg2rad(225); deg2rad(45) deg2rad(225); deg2rad(-45) deg2rad(225); 0 deg2rad(270); deg2rad(45) deg2rad(270); deg2rad(-45) deg2rad(270); 0 deg2rad(315); deg2rad(45) deg2rad(315); deg2rad(-45) deg2rad(315)]; 
[k, values,volume,A]=Reconstructor(angles,contour);
pause(0.01) %if you want to see the point being drawn
[x,y,z] = sphere;
ctr=[0 0 0];
radius=2.5;
hold on
trisurf(k,values(:,1),values(:,2),values(:,3),'Facecolor','red','FaceAlpha',0.1)
m=mesh(radius*x+ctr(1),radius*y+ctr(2),radius*z+ctr(3),'EdgeColor','blue');
set(m,'facecolor','none');
volumeGroundTruth=(4/3)*pi*(radius.^3);
volumeRatio1=volume/volumeGroundTruth
surfaceAreaGroundTruth=(4*pi*radius.^2);
surfaceAreaRatio1=A/surfaceAreaGroundTruth

pause
% 
% %%Emax=0.1 (10%)
clc
close all
contour=zeros(25,2);
Emax=0.1;
[x,y]=simulator(Emax);
contour(:,1)=x;
contour(:,2)=y;

%  k = boundary(x,y);
%  hold on;
%  plot(x(k),y(k));
angles=[0 0; deg2rad(45) 0; deg2rad(-45) 0;0 deg2rad(45); deg2rad(45)  deg2rad(45); deg2rad(-45) deg2rad(45); 0  deg2rad(90); deg2rad(45) deg2rad(90); deg2rad(-45) deg2rad(90); 0 deg2rad(135); deg2rad(45) deg2rad(135); deg2rad(-45) deg2rad(135); 0  deg2rad(180); deg2rad(45) deg2rad(180);deg2rad(-45) deg2rad(180); 0 deg2rad(225); deg2rad(45) deg2rad(225); deg2rad(-45) deg2rad(225); 0 deg2rad(270); deg2rad(45) deg2rad(270); deg2rad(-45) deg2rad(270); 0 deg2rad(315); deg2rad(45) deg2rad(315); deg2rad(-45) deg2rad(315)]; 
[k, values,volume,A]=Reconstructor(angles,contour);
pause(0.01) %if you want to see the point being drawn
[x,y,z] = sphere;
ctr=[0 0 0];
radius=2.5;
hold on
trisurf(k,values(:,1),values(:,2),values(:,3),'Facecolor','red','FaceAlpha',0.1)
m=mesh(radius*x+ctr(1),radius*y+ctr(2),radius*z+ctr(3),'EdgeColor','blue');
set(m,'facecolor','none');
volumeGroundTruth=(4/3)*pi*(radius.^3);
volumeRatio2=volume/volumeGroundTruth
surfaceAreaGroundTruth=(4*pi*radius.^2);
surfaceAreaRatio2=A/surfaceAreaGroundTruth

pause
% %%Emax=0.15 (15%)
clc
close all
contour=zeros(25,2);
Emax=0.1;
[x,y]=simulator(Emax);
contour(:,1)=x;
contour(:,2)=y;

%  k = boundary(x,y);
%  hold on;
%  plot(x(k),y(k));
angles=[0 0; deg2rad(45) 0; deg2rad(-45) 0;0 deg2rad(45); deg2rad(45)  deg2rad(45); deg2rad(-45) deg2rad(45); 0  deg2rad(90); deg2rad(45) deg2rad(90); deg2rad(-45) deg2rad(90); 0 deg2rad(135); deg2rad(45) deg2rad(135); deg2rad(-45) deg2rad(135); 0  deg2rad(180); deg2rad(45) deg2rad(180);deg2rad(-45) deg2rad(180); 0 deg2rad(225); deg2rad(45) deg2rad(225); deg2rad(-45) deg2rad(225); 0 deg2rad(270); deg2rad(45) deg2rad(270); deg2rad(-45) deg2rad(270); 0 deg2rad(315); deg2rad(45) deg2rad(315); deg2rad(-45) deg2rad(315)]; 
[k, values,volume,A]=Reconstructor(angles,contour);
pause(0.01) %if you want to see the point being drawn
[x,y,z] = sphere;
ctr=[0 0 0];
radius=2.5;
hold on
trisurf(k,values(:,1),values(:,2),values(:,3),'Facecolor','red','FaceAlpha',0.1)
m=mesh(radius*x+ctr(1),radius*y+ctr(2),radius*z+ctr(3),'EdgeColor','blue');
set(m,'facecolor','none');
volumeGroundTruth=(4/3)*pi*(radius.^3);
volumeRatio3=volume/volumeGroundTruth
surfaceAreaGroundTruth=(4*pi*radius.^2);
surfaceAreaRatio3=A/surfaceAreaGroundTruth

pause

Emaxes=[0;0.05;0.1;0.15];
volumeRatios=[volumeRatio;volumeRatio1;volumeRatio2;volumeRatio3];
surfaceAreaRatios=[surfaceAreaRatio;surfaceAreaRatio1;surfaceAreaRatio2;surfaceAreaRatio3];
hold on
plot(Emaxes,volumeRatios);
plot(Emaxes,surfaceAreaRatios);