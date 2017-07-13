img = imread('audio_zoomed2.JPG');
imgHSV = rgb2hsv(img);
 %imshow(img);
% hold on;
%line ([400,400],[1,size(img,1)]); 


while(true)
    loc = get_image_point(img);
    disp(loc(1,2)+ " "+loc(1,1));
    disp(imgHSV(loc(1,2),loc(1,1),1) + " " + imgHSV(loc(1,2),loc(1,1),2) + " " + imgHSV(loc(1,2),loc(1,1),3));
end                      

%  rgbToFile('rgb_spectro_sample.txt',img);

 rows = size(img,1);
 cols = size(img,2);
% 
% disp(rows + " " + cols);

% temp_img = zeros(rows,20,3);
% 
fil = fopen("test.txt",'w');
 for i=394
    for j = 1: cols       
        fprintf(fil,"%d\t%d\n",j,imgHSV(i,j,1));
    end
end

% imshow(uint8(temp_img));
 %fil = fopen('temp.txt','w');
% for i=2:150
%     for u=-1:1
%         for v=-1:1
%             fprintf(fil,"{(%3d) (%3d) (%3d)}\t",img(150,i,1),img(150,i,2),img(150,i,3));
%         end
%         fprintf(fil,"\n");
%     end
%     fprintf(fil,"*********************\n");
% end

% thresh = 100;
% labels = zeros(rows,cols,1);
% fil = fopen('hsvplot.csv','w');
% for i=300
%    for j=1:cols
%        fprintf(fil,"%d,%f,%f,%f\n",j,imgHSV(i,j,1),imgHSV(i,j,2),imgHSV(i,j,3));
%        cnt = 0;
%         val = 0;
% %        val = val+abs(img(i,j+6,1)-img(i,j,1));
% % 
% %        val = val+abs(img(i,j+6,2)-img(i,j,2));
% % 
% %        val = val+abs(img(i,j+6,3)-img(i,j,3));
%        %fprintf(fil,"%d,%d\n",j,val);
% %        j = j+4;
% %        fprintf(fil,"%d,%d,%d,%d\n\n",j,img(i,j,1),img(i,j,2),img(i,j,3));
% %        j = j-4;
% %        for u = -1:1
% %            for v = -1:1
% %                if((u+i>=1) & (v+j>=1) & (u+i<=rows) & (v+j<=cols))
% %                    val = 0;
% % %                    val = val+abs(img(i+u,j+v,1)-img(i,j,1));
% % %                    
% % %                    val = val+abs(img(i+u,j+v,2)-img(i,j,2));
% % %                  
% % %                    val = val+abs(img(i+u,j+v,3)-img(i,j,3));
% % %                   
% %                    val = abs(imgHSV(i+u,j+v,1)-imgHSV(i,j,1));
% %                   
% %                    if(val>thresh)
% %                        cnt = cnt+1;
% %                    end
% %                end
% %            end
% %        end
% %        if(val>thresh)
% %           % disp(' pass');
% %            labels(i,j) = 255;
% %        end
%    end
% end
% B = medfilt2(labels);
% imshow(B);
% max = 0;
% colcnt = zeros(cols);
%  for i=4:cols-4
%      cnt=0;
%      for j=1:rows
%          cnt = cnt+labels(j,i);         
%      end
%      colcnt(i) = cnt;
%      fprintf(fil,"%d,%d\n",i,cnt);
%      if(max<cnt)
%          max = cnt;
%      end
%  end
 
%  fac = (255/max);
%  for i=1:cols
%      cnt=0;
%      for j=1:rows
%          labels(j,i) = colcnt(i)*fac;        
%      end
%  end
%  
%  img = labels;
%   while(true)
%     loc = get_image_point(img);
%     disp(loc(1,2)+ " "+loc(1,1));
%     disp(img(loc(1,2),loc(1,1)) + " " + img(loc(1,2),loc(1,1)) + " " + img(loc(1,2),loc(1,1)));
% end
%disp(labels);