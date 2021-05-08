clear all, clc, close all

pkg load image

% ---> GRUPO 11 <---
% Gabriel Peres de Andrade 726517
% Giovanni Alvarenga Silva 726525
% Gustavo Eugênio de Souza Moraes 620238
% Leonardo Melo Martins 726558
% Luiz Felipe Guimarães 743570

srcimg = imread("img/0.jpg");
imbw = im2bw(srcimg);
% imcompl = imcomplement(imbw);

Inf = 100; %ajustar estes valores

bwesq = bwmorph(imbw,'skel',Inf);

imwrite(bwesq, "output.jpg");