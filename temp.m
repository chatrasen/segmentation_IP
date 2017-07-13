img = imread('audio_spectro.JPG');
imgHSV = rgb2hsv(img);

fil = fopen("hsv.txt",'w');

for i=300
    for j=1:size(img,2)
        fprintf(fil,"%d, %d, %d \n",imgHSV(i,j,1),imgHSV(i,j,2),imgHSV(i,j,3));
    end
end
% print = csvread('strips.csv');
%  print_t = print(29017:29088,2);
%  print_x = print(29017:29088,3);
% %   print_y = print(1:72,7);
% %     print_z = print(1:72,8);
% % filt_x = sgolayfilt(print_x,3,5);
% %fft(print_x);
% hold on;
%  plot(print_t,print_x,'r');
% plot(print_t,print_y,'g');
% plot(print_t,print_z,'b');
% 
%   plot(print_t,print_x,'g');
%    plot(print_t,print_x,'b');
%    hold off;
%  [yupper,ylower] = envelope(print_x);
%  
%  a0 = 0;
%  a1=0;
%  a2=0;
%  a3=0;
%  a4=0;
%  a5=0;
%  a6=0;
%  a7=0;
%  a8=0;
%  a9=0;
%  a10=0;
%  for i=1:length(print_x)
%     % disp(typecast(floor(print_x(i)/100),'int64'));
%     % disp('\n');
%      %z(floor(print_x(i)/100)) = z(floor(print_x(i)/100))+1;
%      if(floor(print_x(i)/100)==0)
%          a0 = a0+1;
%      end
%      if(floor(print_x(i)/100)==1)
%          a1 = a1+1;
%      end
%      if(floor(print_x(i)/100)==2)
%          a2 = a2+1;
%      end
%      if(floor(print_x(i)/100)==3)
%          a3 = a3+1;
%      end
%      if(floor(print_x(i)/100)==4)
%          a4 = a4+1;
%      end
%      if(floor(print_x(i)/100)==5)
%          a5 = a5+1;
%      end
%      if(floor(print_x(i)/100)==6)
%          a6 = a6+1;
%      end
%      if(floor(print_x(i)/100)==7)
%          a7 = a7+1;
%      end
%      if(floor(print_x(i)/100)==8)
%          a8 = a8+1;
%      end
%      if(floor(print_x(i)/100)==9)
%          a9 = a9+1;
%      end
%      if(floor(print_x(i)/100)==10)
%          a10 = a10+1;
%      end
%      
%  end
%  disp(a0);
%  disp(a1);
%  disp(a2);
%  disp(a3);
%  disp(a4);
%  disp(a5);
%  disp(a6);
%  disp(a7);
%  disp(a8);
%  disp(a9);
%  disp(a10);

% print_x()
%  u_mean = mean(yupper);
%  l_mean = mean(ylower);
% %  disp(u_mean);
% %  disp(l_mean);
% %  disp(u_mean - l_mean);
%  disp((u_mean + l_mean)/2);
% ymid = (ylower+yupper)/2;
% filt_x = sgolayfilt(print_x,3,5);
% %figure;
% plot(print_t,print_x);

%figure;
% print = csvread('power/side_square_gb.csv');
%  print_t = print(:,1);
%  print_x = print(:,11);
%  plot(print_t,print_x);
% 
 %findpeaks(filt_x);
%  fft_p = fft(print_x);
%  s = spectrogram(fft_p);
%  plot(s);
% findpeaks(filt_x);
 %[major_peaks, index]=findpeaks(filt_x);
%indices=idx1(index)
%distances
 %dist=mean(diff(index));
 %disp(dist);
%  plot(print_t,print_x);
%  findpeaks(print_x,print_t,'MinPeakDistance',1);
%  
% %  plot(print_t,print_x);
% % print_fft = fft(print_x);
% %[peaks,idx] = findpeaks(print_x,print_t);
% % plot(idx,peaks);
% %  dy=diff(peaks)
% %  plot(idx(:),peaks)
%    plot(print_t,print_x);
%   %findpeaks(print_x);
%  %scatter(idx1,peaks,2);
%   new_dist = mean(diff(idx));
%   idx2 = [3.5,3.6,3.7];
%   new_dist = mean(diff(idx2));
%   disp(new_dist);
%   fil = fopen('index.txt','w');
%   for i = 1:length(idx)
%      fprintf(fil,"%f, %f\n",peaks(i),idx(i)); 
%   end
% %   new_idx = vertcat(idx(13:39),idx(59:118),idx(136:227));
% %   [index,isnoise] = DBSCAN(new_idx,0.32,2);
% %    fil = fopen('dbscan.txt','w');
% %   for i = 1:length(index)
% %      fprintf(fil,"%f, %f\n",index(i),isnoise(i)); 
% %   end
% %  fclose(fil);
% % print_y = print(:,3);
% % print_z = print(:,4);
% % 
% % print2 = csvread('side-equi-triangle_mag.csv');
% % print2_t = print2(:,1);
% % print2_x = print2(:,2);
% % print2_y = print2(:,3);
% % print2_z = print2(:,4);
% %{
% plot(print_t,print_x);
% savea(gcf,'underbed_print_x.jpg');
% plot(print_t,print_y);
% saveas(gcf,'underbed_print_y.jpg');
% %}
% %scatter(print_t,print_z);
% %saveas(gcf,'underbed_print_z.jpg');
% %{
% xlim([0 150]);
% ylim([-100 50]);
% subplot(2,1,1);
% plot(print_t,print_y);
% subplot(2,1,2);
% plot(print2_t,print2_y);
% %}
% % plot(print_t, print_x);
% %findpeaks(print_x,print_t,'MinPeakProminence',10);
% % filt_x = sgolayfilt(print_x,5,7);
% % t1 = linspace(print_t(1), print_t(end),256);
% % x1 = interp1(print_t,print_x,t1,'spline');
% % plot(t1,x1);
% 
% % 
% % window = 40;
% % print_t = print(45:45+window,1);
% % print_x = print(45:45+window,2);
% % min_peak=2
% % %[peaks,idx1]=findpeaks(print_x)
% %  [T,peaks,idx1]=evalc('findpeaks(print_x);');
% % % % Major peaks and indices
% % % 
% % % [major_peaks, index]=find(peaks)
% % % indices=idx1(index)
% % % %distances
% % dist=mean(diff(idx1))
% 
% 
% %wf_fft = fft(print_z);
% %plot(abs(wf_fft))
% 
% % start = 45;
% % startp = 45+window;
% % endp = 45+(2*window);
% % thresh = 0.5;
% % a = zeros(1,20);
% % b = zeros(1,20);
% % count = 1;
% % 
% % for i=1:20
% %     print_t = print(startp:endp,1);
% %     print_x = print(startp:endp,2);
% %     [T,peaks,idx1]=evalc('findpeaks(print_x);');
% %     if dist>4
% %         thresh = 3;
% %     else
% %         thresh = 0.5;
% %     end
% %     new_dist = mean(diff(idx1));
% %    % plot(print_t,print_x);
% %     fprintf("dist = %f, new-dist = %f, i = %d",dist,new_dist,i);
% %     %disp(x);
% %     
% %     if abs(new_dist-dist) > thresh
% %         disp('pass');
% %         a(count) = start;
% %         b(count) = endp-window;
% %         start = startp;
% %         count = count + 1;
% %     end
% %     dist = new_dist;
% %     startp = startp+window;
% %     endp = endp+window;        
% % end
% % 
% % for i=1:20
% %    fprintf("start = %d, end= %d",a(i),b(i)); 
% %    %disp(x);
% % end
% 
% function [IDX, isnoise]=DBSCAN(X,epsilon,MinPts)
% 
%     C=0;
%     
%     n=size(X,1);
%     IDX=zeros(n,1);
%     
%     D=pdist2(X,X);
%     
%     visited=false(n,1);
%     isnoise=false(n,1);
%     
%     for i=1:n
%         if ~visited(i)
%             visited(i)=true;
%             
%             Neighbors=RegionQuery(i);
%             if numel(Neighbors)<MinPts
%                 % X(i,:) is NOISE
%                 isnoise(i)=true;
%             else
%                 C=C+1;
%                 ExpandCluster(i,Neighbors,C);
%             end
%             
%         end
%     
%     end
%     
%     function ExpandCluster(i,Neighbors,C)
%         IDX(i)=C;
%         
%         k = 1;
%         while true
%             j = Neighbors(k);
%             
%             if ~visited(j)
%                 visited(j)=true;
%                 Neighbors2=RegionQuery(j);
%                 if numel(Neighbors2)>=MinPts
%                     Neighbors=[Neighbors Neighbors2];   %#ok
%                 end
%             end
%             if IDX(j)==0
%                 IDX(j)=C;
%             end
%             
%             k = k + 1;
%             if k > numel(Neighbors)
%                 break;
%             end
%         end
%     end
%     
%     function Neighbors=RegionQuery(i)
%         Neighbors=find(D(i,:)<=epsilon);
%     end
% 
% end
% 
