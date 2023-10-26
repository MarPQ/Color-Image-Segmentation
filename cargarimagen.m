clear; clc;

I=imread('g.png');
I2=segmentaColor(I,30,60,0.2,0.8,0.1,0.7);
%I3=rgb2hsv(I);
imshow(I2);
%imshow(I3);
            