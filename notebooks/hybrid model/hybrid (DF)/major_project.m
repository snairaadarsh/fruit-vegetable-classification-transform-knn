close all;
clear all;
clc;
 
p= 180;            %no of database images
testno =60;     %no of test images
T = 0.4;
 
tic 
A = zeros(65536,1);
 
    path = '';
    path = strcat(int2str(1),'p_',int2str(1),'.jpg');
    im = imread(path);
    bw = im2bw(im,T);
    re = imresize(bw,[256,256]);
    y = dct2(re);
    z = abs(y);
    r = double(z);
    A = reshape(r,65536,1);
for i = 2 : p
    path = '';
    path = strcat(int2str(i),'p_',int2str(1),'.jpg');
    img = imread(path);
    im = rgb2gray(img)
    bw = im2bw(im,T);
    re = imresize(bw,[256,256]);
    y = dct2(re);
    z = abs(y);
    r = double(z);
    A = [A,reshape(r,65536,1)];
    
end
 
B = zeros(65536,1)
 
    path = '';
    path = strcat(int2str(1),'p_',int2str(4),'.jpg');
    img = imread(path);
    im = rgb2gray(img)
    bw = im2bw(im,T);
    re = imresize(bw,[256,256]);
    y = dct2(re);
    z = abs(y);
    r = double(z);
    B = reshape(r,65536,1);
 
for i = 2 : testno
    path = '';
    path = strcat(int2str(i),'p_',int2str(4),'.jpg');
    img = imread(path);
    im = rgb2gray(img)
    bw = im2bw(im,T);
    re = imresize(bw,[256,256]);
    y = dct2(re);
    z = abs(y);
    r = double(z);
    B = [B,reshape(r,65536,1)];
   
end
 
 
 
x = A;
y = B;
 
[nx mx] = size(x);
[ny my] = size(y);
 
for j = 1 : my
    path = '';
    path = strcat(int2str(j),'p_',int2str(4),'.jpg');
    img=imread(path);
    im = rgb2gray(img)
    figure(j);
    subplot(1,2,1); imshow(path); 
    title('Testing Image');
    for i = 1 : mx
        d = y(:,j)-x(:,i);
        dis1 = sqrt(d'*d);
        disty(i) = dis1;
    end
    disty
    dmin = min(disty)
    k = find(disty == dmin)
    if size(k,2)~=1
        k=min(k);
    end
    fstr=strcat(int2str(k),'p_',int2str(1),'.jpg');
    figure(j); subplot(1,2,2); imshow(fstr);
    title('Image from the database');
       
end
toc


