function[k,values,vol,A]=Reconstructor(angles,contours)
%take 8 images every 45 degrees about z axis
%can rotate at (0,45,-45) for x axis
%Generate ROI
cube=ones(30,30,30);
stepSize=30/10; %cube must be 10x10x10, chose this step size as it generates a relatively accurate sphere without taking a tremendous amount of time to run (since we need to manage the tradeoff of effeciency and accuracy)
values=[];
for s=1:size(angles)
    m = makehgtform('xrotate',angles(s,1),'zrotate',angles(s,2)); %transformation matrices
    for i=1:30
        for j=1:30
            for k=1:30
                paddedPoint=[i/stepSize j/stepSize k/stepSize 1]; %pad point with a 1 in order to multiply by rotation matriz
                point=(paddedPoint -[5 5 5 0]); %-5 because  ROI must be ceentered at origin
                point=point*m;
                result=linePlane(0,75,0,point(1,1),point(1,2),point(1,3),0,-75, 0,0,-74,0); %projection is intersection of line between source and point in cube, with plane located at dector
                in=inpolygon(result(1,1),result(1,3),contours(:,1),contours(:,2)); %check if it is in contour of polygon created by points 
                if ~in
                    cube(i,j,k)=0; %if not projected into image of circle, not part of tumor
                end
            end
        end
    end
end
count=0;
for i=1:30
        for j=1:30
            for k=1:30
                if cube(i,j,k)==1
                    count=count+1;
                    
                end
            end
        end
end
disp(count)
values=zeros(count,3);
counter=1;
for i=1:30
        for j=1:30
            for k=1:30
                if cube(i,j,k)==1
                 values(counter,1:3)=[i/stepSize-5 j/stepSize-5 k/stepSize-5]; %values which are part of tumor
                 counter=counter+1;
                end
            end
        end
end

k=boundary(values);
[~, vol]=boundary(values); %volume of sphere
shp=alphaShape(values(:,1),values(:,2),values(:,3));
A=surfaceArea(shp); %surface area of tumor (will only work if no grooves, dents or holes. Ideally should use delauney triangulation in order to calculate surface area as this will allow for an imperfect tumor sape to be caluclated effectively)
end

% dt = delaunayTriangulation(k);

