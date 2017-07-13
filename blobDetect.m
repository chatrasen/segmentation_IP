function [blobs] = blobDetect(img,color)
%% INITIALIZATION
   rows = size(img,1);
   cols = size(img,2); 
   blobs = CQueue; % will contatin all the blobs
   visited = zeros(rows,cols);
%    cnt=1;
   q = CQueue;
   blobQ = CQueue; %Will contain one blob
   pixThresh = 750;
   
  %% BFS CODE
   for i=1:rows
      for j=1:cols
         if(img(i,j,color)~=0 && visited(i,j)==0)
            blobQ = CQueue;
            visited(i,j) = 1;
            q.push([i j]);
            while(~q.isempty())
               curr = q.front();
               a=curr(1);
               b=curr(2);             
               blobQ.push([a b]);
               q.pop();               
               for u=-1:1
                   for v=-1:1
                      if(a+u>=1 && b+v>=1 && a+u<=rows && b+v<=cols && img(a+u,b+v,color)~=0)
                         if visited(a+u,b+v)==0
                            q.push([a+u b+v]);
                            visited(a+u,b+v)=1;
                         end
                      end
                   end
               end
            end
            
            if(blobQ.size()>pixThresh)
                blobs.push(blobQ);  
                disp(blobQ.size());
            end
%             blobQ.empty(); This acts as a pointer and empties the pushed
%             queue. So dont use this. Create a new object at the top each
%             time
         end
      end
   end
end