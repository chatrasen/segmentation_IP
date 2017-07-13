%% Removes Green portion from regions which have been already marked red. It also does
%    Blob Detection ais applied again so as to eliminate broken small blobs
%} 
function [copy,newRedBdry] = removeGreenOverRed(redBdry, blobs, rows, cols)
    copy = CQueue;
    newImg = zeros(rows,cols,3);
    while ~blobs.isempty()
       temp = CQueue;
       curBlob = blobs.front();
       blobs.pop();
       while ~curBlob.isempty()
          curr = curBlob.front();
          curBlob.pop();
          flag = 1;
          tempRB = CQueue;
          while ~redBdry.isempty()
             elem = redBdry.front();
             redBdry.pop();
             tempRB.push(elem);
             if(curr(2)>=elem(1) && curr(2)<=elem(2))
                 flag = 0;
             end
          end
          redBdry = tempRB;
          if(flag==1)
             temp.push(curr); 
             newImg(curr(1),curr(2),2) = 255;
          end
       end       
       copy.push(temp);         
    end
    copy = blobDetect(newImg,2);
    disp(redBdry.size());
    newRedBdry = redBdry;
end