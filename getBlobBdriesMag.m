function [bdries,copy] = getBlobBdriesMag(blobs,cols)
    copy = CQueue;
    bdries = CQueue;
    
    while ~blobs.isempty()
       curBlob = blobs.front();
%        display(curBlob);
       temp = CQueue;
       left = cols+1;
       right = 0;       
%        display(curBlob);
       while ~curBlob.isempty()           
           curr = curBlob.front();
           temp.push(curr);
           curBlob.pop();
           left = min(left,curr(2));
           right = max(right,curr(2));
       end
       copy.push(temp);
       blobs.pop();
       bdries.push([left right]);
    end
end