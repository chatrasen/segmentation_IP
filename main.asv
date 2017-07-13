img = imread('images/audio_star.JPG');
imgHSV = rgb2hsv(img);

rows = size(img,1);
cols = size(img,2);

segImg = zeros(rows,cols,3);

for i=1:rows
   for j=1:cols
      if imgHSV(i,j,1) > 0.1 && imgHSV(i,j,1) < 0.15
         segImg(i,j,1) = 255;
%% Used for magnetometer
%       elseif imgHSV(i,j,1) < 0.20  
%            segImg(i,j,2) = 255;  
%       elseif imgHSV(i,j,1) < 0.4
%            segImg(i,j,3) = 255;     
      end          
   end
end
figure;
imshow(segImg);
 blobs = blobDetect(segImg,1);
[redBdry,blobs,bdryArr] = getBlobBdries(blobs,cols);
 blobs = removeSmallBlobs(blobs,bdryArr,cols);
 figure;
 blobs = displayBlobs(blobs,segImg,1);
%   blobs = blobDetect(segImg,1);
% [redBdry,blobs,bdryArr] = getBlobBdries(blobs,cols); 
%  blobs = blobDetect(segImg,2);
%  [blobs, redBdry] = removeGreenOverRed(redBdry,blobs,rows,cols); 
%  [greenBdry,blobs,bdryArr] = getBlobBdries(blobs,cols);
% %  display(redBdry);
%  figure;
%  blobs = displayBlobs(blobs,segImg,2);
%  
%  segments = getSegments(redBdry, greenBdry);
%  disp(segments);
%  
%  mag = csvread('sample2.csv');
%  mag_t = mag(:,1);
%  mag_x = mag(:,2);
%  
%  disp(cols);
% sx = size(mag_x,1);
%  
% figure;
% hold on;
% plot(mag_x);
%  for i=1:length(segments)
%     disp(segments(i));
%     segments(i) = segments(i)*(sx/cols); 
%     plot([segments(i) segments(i)], [-600 -400],'r');
%     disp(segments(i));
%  end
%  
% 
%  disp(segments);
%  
%  
%  