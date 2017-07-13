%% Select the mode
mode = 1; %Audio
% mode = 2; %EMF

%% Initial setup
% fileName = 'images/sample_spectro.JPG'; % Hexagon EMF
%  fileName = 'images/audio_star.JPG';  % Audio Star;
% fileName = 'images/audio_mystery37.JPG';  % Audio mystery37;
fileName = 'images/audio_mystery776.JPG';  % Audio mystery776;

% Read the image
img = imread(fileName);

%Convert img to hsv
imgHSV = rgb2hsv(img);

rows = size(img,1);
cols = size(img,2);

%This is the new image which will be used for segmentation
segImg = zeros(rows,cols,3);


if mode==1
    %% audio
     for i=1:rows
        for j=1:cols
          if imgHSV(i,j,1) > 0.1 && imgHSV(i,j,1) < 0.15
             segImg(i,j,1) = 255;
          end
        end
     end
    figure;
    imshow(segImg);
    blobs = blobDetect(segImg,1,1);
    [redBdry,blobs,bdryArr] = getBlobBdries(blobs,cols);
    blobs = removeSmallBlobs(blobs,bdryArr,cols);
    figure;
    blobs = displayBlobs(blobs,segImg,1);
else
    %% Used for magnetometer
    for i=1:600
        for j=1:cols
          if imgHSV(i,j,1) < 0.11
              segImg(i,j,1) = 255;
          elseif imgHSV(i,j,1) < 0.14  
               segImg(i,j,2) = 255;  
          elseif imgHSV(i,j,1) < 0.4
               segImg(i,j,3) = 255;     
          end             
        end
    end


    %% For magnetometer
    % figure;
    % imshow(segImg);
    blobs = blobDetect(segImg,1,2); % Detect red blobs
    % figure;
    % blobs = displayBlobs(blobs,segImg,1); 
%% If u wanna uncomment the ablove peace of code, comment Everything below
    

    [redBdry,blobs] = getBlobBdriesMag(blobs,cols); 
     blobs = blobDetect(segImg,2,2);
    [blobs, redBdry] = removeGreenOverRed(redBdry,blobs,rows,cols); 
    [greenBdry,blobs] = getBlobBdries(blobs,cols);
%     figure;
%      blobs = displayBlobs(blobs,segImg,2);
     
%% 
     segments = getSegments(redBdry, greenBdry); % merges the two and gives an array
%      disp(segments);

     mag = csvread('data/sample.csv'); % Change file name if you use something else
     mag_t = mag(:,1);
     mag_x = mag(:,2);

     disp(cols);
     sx = size(mag_x,1);

     figure;
     hold on;
     plot(mag_x);
     for i=1:length(segments)
        segments(i) = segments(i)*(sx/cols); 
        plot([segments(i) segments(i)], [-600 -400],'r');
     end    
 
end
 