close all
clear all
clc
pic=imread('image5.jpeg');
subplot(2,4,1),imshow(pic);
pic_gray=rgb2gray(pic);
subplot(2,4,2),imshow(pic_gray);
bw=im2bw(pic_gray);
subplot(2,4,3),imshow(bw);
bw1=bwlabel(bw);
a=regionprops(bw1,'Area');
x=size(a);
y=0;
for i = 1 : x
    m=a(i);
    y= y + m.Area;
end
[k,l]=size(pic_gray);
s=y/(k*l);
ss=['cloud perc',num2str(s)];
title(ss);