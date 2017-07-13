img = imread('full_chakra_spectro.JPG');
imgHSV = rgb2hsv(img);

rows = size(img,1);
cols = size(img,2);

% stripArr = zeros(rows,72,3);
segImg = zeros(rows,cols,3);

for i=1:rows
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

imshow(segImg);

% thresh = 0.40;
% 
% fil = fopen("strips.csv",'w');

% stripNo = 0;
% for i=1:rows
% %     disp(i);
%     stripNo = 0;
%     for j=1:20:cols
%         stripNo = stripNo+1;          
% %         rAvg = 0; gAvg = 0; bAvg = 0;
% %         hAvg = 0; sAvg = 0; vAvg = 0;
%         cnt = 0;
%         k = min(j+19,cols);
%         rAvg = mean(img(i,j:k,1));
%         gAvg = mean(img(i,j:k,2));
%         bAvg = mean(img(i,j:k,3));
%         hAvg = mean(imgHSV(i,j:k,1)); 
% %         if(i==394)
% %             disp(hAvg + " " + imgHSV(i,j,1));
% %         end
% %         disp(img(i,j:k,1));
% %         disp(m);
% %         for k=j:j+19
% %             if(k>cols)
% %                 break;
% %             end
% %             cnt = cnt+1;
% %             %disp(img(i,k,1));
% %             %disp(rAvg + " " + img(i,k,1));
% %             rAvg = rAvg+img(i,k,1); 
% %             disp(uint16(rAvg));
% %             gAvg = gAvg+img(i,k,2);
% %             bAvg = bAvg+img(i,k,3);
% % %             hAvg = hAvg+imgHSV(i,k,1); 
% % %             sAvg = sAvg+imgHSV(i,k,2);
% % %             vAvg = vAvg+imgHSV(i,k,3);
% %         end
% %         if(cnt==0)
% %             continue;
% %         end
% % %         disp(rAvg + " " + cnt);
% %          rAvg = rAvg/cnt; gAvg = gAvg/cnt; bAvg = bAvg/cnt;
% % %         hAvg = hAvg/cnt; hAvg = hAvg/cnt; vAvg = vAvg/cnt;
% % %         stripArr(i,stripNo,1) = rAvg;
% % %         stripArr(i,stripNo,2) = gAvg;
% % %         stripArr(i,stripNo,3) = bAvg;
% % %         format long;
%           fprintf(fil,"%d,%d,%d,%d,%d,%d\n",i,stripNo,hAvg,rAvg,gAvg,bAvg);
%     end
% end
% 
% stripArr = csvread('strips.csv');
% strips1 = stripArr(:,1);
% strips2 = stripArr(:,2);
% strips3 = stripArr(:,3);
% strips4 = stripArr(:,4);
% strips5 = stripArr(:,5);
%  disp(size(stripArr,1));

% we need to change ranges of i and j over here. Properly
% for i=1:500
% %     disp(i);
%     for j=1:stripNo-1
%        val = 0;       
%        val = val+abs(strips3(stripNo*(i-1)+j+1)-strips3(stripNo*(i-1)+j));                  
%        val = val+abs(strips3(stripNo*(i-1)+j+1)-strips3(stripNo*(i-1)+j));                 
%        val = val+abs(strips3(stripNo*(i-1)+j+1)-strips3(stripNo*(i-1)+j));
%        if val>thresh
%            for k = (j-1)*20+1:j*20
%              segImg(i,k) = 255;
%            end
%        end
%     end
% end

% fil = fopen("out.csv",'w');
% for i=1:rows
%     cnt = 0;
%    for j=1:rows
%        if segImg(j,i)==255
%            cnt = cnt+1;
%        end
%    end
%   
%    fprintf(fil,"%d,%d\n",i,cnt);
% end


imshow(segImg);
