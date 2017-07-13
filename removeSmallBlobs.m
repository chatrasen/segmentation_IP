function [newBlobs]=removeSmallBlobs(blobs,bdryArr,cols)
    newBlobs = CQueue;    
    while ~blobs.isempty()
       curBlob = blobs.front();
       temp = CQueue;
       blobs.pop();
       left = cols+1;
       right = 0;       
       while(~curBlob.isempty())           
           curr = curBlob.front();
           temp.push(curr);
           curBlob.pop();
           left = min(left,curr(2));
           right = max(right,curr(2));
       end
       flag = 0;
       if(left==502)
           disp('pass');
       end
       for i=1:length(bdryArr)
            if left+5 < bdryArr(i,2) && right-5 > bdryArr(i,1)
                if (right-left)<=bdryArr(i,2)-bdryArr(i,1)
                    if(right-left)==bdryArr(i,2)-bdryArr(i,1)
                        if(size(temp)<bdryArr(i,3))
                            flag = 1;
                            break;
                        end
                    else                    
                        flag = 1;
                        break;
                    end
                end
            end
       end
       if flag == 0
            if(left==502)
               disp('pass');
           end
           newBlobs.push(temp);
       end
    end
end