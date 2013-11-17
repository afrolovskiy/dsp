% Load image
I = im2double(imread('ИУ7-37.bmp'));
figure(1); imshow(I); title('Исходное изображение');

%PSF
PSF = fspecial('motion', 43, 12);
noise_mean = 0;
noise_var = 0.0001;
estimated_nsr = noise_var / var(I(:));

I = edgetaper(I, PSF);
figure(2); imshow(deconvwnr(I, PSF, estimated_nsr)); title('Результат');
