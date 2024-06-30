% 代码文件：show_train_class.m
% 代码功能：显示训练集中指定第i类中的15张图
% 作者：禹泽海 时间：2024/6/15

load('train_data.mat')
% 定义要显示的图像数量
numImagesToShow = 15;
% 所需要的查看的类编号
classnum = 122;

% 确保numImagesToShow不大于train数据集中的图像总数
numImagesToShow = min(numImagesToShow, size(train, 1));

% 创建一个新的图形窗口
figure;

% 计算每行显示的图像数量，这里我们假设每行显示5张图像
imagesPerRow = 5;
rows = ceil(numImagesToShow / imagesPerRow);

for i = 1:numImagesToShow
    subplot(rows, imagesPerRow, i);

    % 去除多余的维度并显示当前图像,首个参数表示对应200类别
    singleImage = squeeze(train(classnum,i, :, :));
    imagesc(singleImage);
    colormap gray;  % 确保使用灰度颜色映射
    axis image;    % 保持图像的纵横比
    % 添加标题等信息
    title(['Image ' num2str(i)]);
end