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
% Description			:		1.读入tb文件中生成的txt文件;
%                               2.txt文件中的数据可以是十进制、也可以是十六进制，在tb中设置;
%                               3.使用imshow函数显示仿真数据的时候有个坑，数据导入matlab后，查看数据范围是0~255，但是数据类型与imshow函数使用的不同，直接使用imshow(img)的时候，imshow会多余的处理数据，处理结果就是：大于0的像素认为该点灰度为1，否则为零，直观的观察就是窗口像是图像为纯白色;
% Modification History	:
% Data			By			Version			Change Description
% =========================================================================
% 30/12/18		zjl			  1.0				Original
% -----------------------------------------------------------------------*/


fid = fopen('x1.txt','rt');
img_tmp=fscanf(fid,'%d',inf);%以十进制数据读入数据到matlab工作区
% img_tmp2 = reshape(img_tmp, 254,320);% 1行N列
% img_tmp3 = imresize(img_tmp2,[256,320]);
% img_tmp4 = round(img_tmp3);
% img_320x256=uint8(img_tmp3);
p=1;
for i = 1 : 254			%行数，取决于生成的txt文件像素数目
	for j = 1 : 320		%列数，设置为固定吧
        img_tmp2(i,j) = img_tmp(p);
		p=p+1;
    end
end
fclose(fid);
figure(1)
imshow(img_tmp2,[]);	%! 注意：加上[]配置函数自动处理数据类型
% imwrite(uint8(img_320x256),'file_out.tif')
% imshow(img_320x256);
