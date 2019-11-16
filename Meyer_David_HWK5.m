%David Meyer Homework 5
%CS390S
%November 14,2019

clc
clear all
close all

%Image obtained from https://www.petgazette.biz/wp-content/uploads/2019/07/cat-e1564498364226.jpg
%Image date saved 11/14/2019
pic = rgb2gray(imread('kittenOrig.jpg'));%Only a .006 difference from rgb
figure,imshow(pic)

%These two lines are matlab example
H = fspecial('Gaussian',[11 11],1.5);
A = imfilter(pic,H,'replicate');
%figure,imshow(A)

H = fspecial('
figure,montage({pic,A,B})







%%Everything after this keep once have saliency working


[ssimVal_1, ssimMap_1] = ssim(A,pic);
  
fprintf('The SSIM value is %0.4f.\n',ssimVal_1);%Print to console of the img value
%Show map of ssim
figure, imshow(ssimMap_1,[]);
title(sprintf('ssim Index Map - Mean ssim Value is %0.4f',ssimVal_1));



%% ALL FUNCTIONS