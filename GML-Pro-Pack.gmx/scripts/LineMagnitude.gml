var x1,y1,z1,x2,y2,z2,vectorx,vectory,vectorz;
x1=argument0;
y1=argument1;
z1=argument2;
x2=argument3;
y2=argument4;
z2=argument5;
vectorx = x2 - x1;
vectory = y2 - y1;
vectorz = z2 - z1;
return sqrt( vectorx * vectorx + vectory * vectory + vectorz * vectorz );
