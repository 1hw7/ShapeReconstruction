function [x,y]=simulator(Emax)
%The simulator only needs to generate a circle with points equidistant
%apart since we are using a perfect sphere. Therefore, every image is the
%same circle. Furthermore, since we are rotating the ROI and not the c arm
%all we need to do is use this same image, and rotate the points within the
%cube. 

%for this reason, the simulator only ever generates one image and I adjust
%the emax in order to add error and create a new image (simply same image
%with points multipled by error)
radius=5;
M=25;
theta=linspace(0,2*pi,M);
x=radius*cos(theta);
y=radius*sin(theta);
x=x';
y=y';
error=(1-Emax)+(1+Emax-(1-Emax))*rand(1,1);
x=x.*error;
y=y.*error;
end
