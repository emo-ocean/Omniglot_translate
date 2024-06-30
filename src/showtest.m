% 代码文件：show_test.m
% 代码功能：显示测试集中指定n张图
% 作者：禹泽海 时间：2024/6/15

load('test_data.mat')
% 定义要显示的图像数量
numImagesToShow = 30;

% 确保numImagesToShow不大于test数据集中的图像总数
numImagesToShow = min(numImagesToShow, size(test, 1));

% 创建一个新的图形窗口
figure;

% 计算每行显示的图像数量，这里我们假设每行显示5张图像
imagesPerRow = 5;
rows = ceil(numImagesToShow / imagesPerRow);

for i = 21:50
    % 计算当前图像的子图位置
    subplot(rows, imagesPerRow, i-20);
    
    % 去除多余的维度并显示当前图像
    singleImage = squeeze(test(i, :, :));
    imagesc(singleImage);
    colormap gray;  % 确保使用灰度颜色映射
    axis image;    % 保持图像的纵横比
    % 添加标题等信息
    title(['Image ' num2str(i)]);
end