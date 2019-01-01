% /*-----------------------------------------------------------------------
% CONFIDENTIAL IN CONFIDENCE
% This confidential and proprietary software may be only used as authorized
% by a licensing agreement from zjl ().
% In the event of publication, the following notice is applicable:
% Copyright (C) 2013-20xx zjl Corporation
% The entire notice above must be reproduced on all authorized copies.
% Author				:		zjl
% Technology blogs 	:       
% Email Address 		: 		i540113104@gmail.com
% Filename			:		.m
% Data				:		2018-12-30
% Description			:		1.可以输入任意尺寸的图片，输出图片分辨率为320x256
%                               2.输出rgb、灰度图像
%                               3.生成txt文件，在modelsim仿真时使用
%                               4.生成mif文件，在例化IP核时使用
% Modification History	:
% Data			By			Version			Change Description
% =========================================================================
% 30/12/18		zjl			  1.0				Original
% -----------------------------------------------------------------------*/

clc
clear all
close all

img_ori = imread('lena.jpg');%加载图像
img_320x256 = imresize(img_ori,[256,320]);% 把图片转换为320x256分辨率
img_320x256_gray = rgb2gray(img_320x256);%图像转换为灰度图像

imwrite(img_320x256_gray,'lena_gray_320x256.jpg');

% ---------------------------------------------------------------------------
figure(1)
subplot(1,3,1),imshow(img_ori);
subplot(1,3,2),imshow(img_320x256);
subplot(1,3,3),imshow(img_320x256_gray);
% ---------------------------------------------------------------------------
%320*256大小的灰度图像生成TXT文档
fid = fopen('./lena.txt','wt');%打开空文件
for i = 1 : size(img_320x256_gray, 1)%行循环
    for j = 1 : size(img_320x256_gray, 2)%列循环
        fprintf(fid, '%d ', img_320x256_gray(i, j));%每个数据之间用空格分开%
    end
    fprintf(fid, '\n');%文件末尾加一个换行
end
fid = fclose(fid);%关闭文件
I_data = load('./lena.txt');%加载txt文件到matlab工作区-可不要

% ---------------------------------------------------------------------------
%生成mif文件
[m,n] = size( img_320x256_gray );% m行 n列
N = m*n;                               %%数据的长度，即存储器深度。
word_len = 8;                          %%每个单元的占据的位数，需自己设定
data = reshape(img_320x256_gray', 1, N);% 把矩阵转换为1行N列
 
fid=fopen('gray_image.mif', 'w');       %打开文件
fprintf(fid, 'DEPTH=%d;\n', N);         %存储器深度
fprintf(fid, 'WIDTH=%d;\n', word_len);  %存储器位宽
fprintf(fid, 'ADDRESS_RADIX = UNS;\n'); %% 指定address为十进制
fprintf(fid, 'DATA_RADIX = HEX;\n');    %% 指定data为十六进制
fprintf(fid, 'CONTENT\t');
fprintf(fid, 'BEGIN\n');
for i = 0 : N-1
    fprintf(fid, '\t%d\t:\t%x;\n',i, data(i+1));
end
fprintf(fid, 'END;\n');                 %%输出结尾
fclose(fid);                            %%关闭文件