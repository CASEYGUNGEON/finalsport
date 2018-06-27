//vectorAdd(len,dir)

if(!vectorlen) {
    vectorlen = argument0;
    vectordir = argument1;
} else {
    x1 = lengthdir_x(vectorlen,vectordir);
    y1 = lengthdir_y(vectorlen,vectordir);
    x2 = lengthdir_x(argument0,argument1);
    y2 = lengthdir_y(argument0,argument1);
    
    vectordir = arctan((x1 + x2)/(y1 + y2));
    vectorlen = sqr((x1 - x2)^2 + (y1 - y2)^2);
}
