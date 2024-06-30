% 代码文件：show_train_ith.m
% 代码功能：显示训练集中n到m个类中各类的第i张图片合集(i<15)
% 作者：禹泽海 时间：2024/6/15

load('train_data.mat')
% 定义要显示的类别数量
numCategories = 30;  % 总共有200个类别

% 确保numCategories不大于test数据集中的类别总数
numCategories = min(numCategories, size(train, 1));

% 创建一个新的图形窗口
figure;

% 每行显示的类别数量
categoriesPerRow = 5;  % 可以根据需要调整每行显示的类别数量
rows = ceil(numCategories / categoriesPerRow);

% 定义所需查看的类区间m-n，区间宽度等于numCategories
for i = 131:160
    % 计算当前类别的子图位置，第三个参数改为i-(m-1)
    subplot(rows, categoriesPerRow, i-130);

    % 去除多余的维度并显示当前类别的第一张图像，可以改
    singleImage = squeeze(train(i, 5, :, :));  % 获取第i个类别的第一张图像
    imagesc(singleImage);
    colormap gray;  % 确保使用灰度颜色映射
    axis image;    % 保持图像的纵横比
    % 添加标题等信息
    title(['Category ' num2str(i)]);
end