clc; clear; close all;
img= imread("image1.jpg");
a=size(img,1);
b=size(img,2);
imshow(img);
x=input("enter a number: ");
y=input("enter a number: ");
img2= zeros(x, y, 3);
rat1= a/x;
rat2= b/y;
for i=1:x
    for j=1:y
        img2(i,j,:)=img(ceil(i*rat1), ceil(j*rat2),:);
    end
end
img2=uint8(img2);
figure
imshow(img2);
%Alireza Shafi