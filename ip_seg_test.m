figure, im = imread('sample_spectro.JPG'); imshow(im)

%get color edges and normalize magnitude 
C = coloredges(im); 
C = C / max(C(:));

%get grayscale edges and normalize magnitude 
G_image = single(rgb2gray(im)) / 255; 
G = sqrt(imfilter(G_image, fspecial('sobel')').^2 + imfilter(G_image, fspecial('sobel')).^2); 
G = G / max(G(:));

%show comparison 
figure, imshow(uint8(255 * C));