function [bdries,copy,bdryArr] = getBlobBdries(blobs,cols)
    copy = CQueue;
    bdries = CQueue;
    bdryArr = zeros(size(blobs),3);
    cnt = 1;
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
       copy.push(temp);
%        disp(left + " " + right);
       bdries.push([left right]);
       bdryArr(cnt,1) = left;
       bdryArr(cnt,2) = right;
       bdryArr(cnt,3) = size(temp);
       cnt = cnt+1;
    end
end