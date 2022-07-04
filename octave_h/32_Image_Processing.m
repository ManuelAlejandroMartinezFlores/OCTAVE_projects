% Image processing

pkg load image

img = imread("IMG/32_Image_Processing/img.jpg");
img = rgb2gray(img);
S = conv2(img, ones(5, 5)/25, "same");
[Dx, Dy] = gradient(S);


img = rand(100, 100);
[row, col] = find(img > 0.99);
figure(1); 
hold on;
imshow(img);
plot(col, row, "ro");
title("Plotting");
hold off;
print("IMG/32_Image_Processing/01_plotting.png");

