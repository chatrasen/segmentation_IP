function[copy] = displayBlobs(blobs,img,color)
    copy = CQueue;
    newImg = zeros(size(img,1),size(img,2), 3);
    while(~blobs.isempty())
       curBlob = blobs.front(); 
       blobs.pop();
       temp = CQueue;
       while(~curBlob.isempty())           
          curr = curBlob.front();
          temp.push(curr);
          newImg(curr(1),curr(2),color) = 255;
          curBlob.pop();
       end
       copy.push(curr);
    end    
    imshow(newImg);
end