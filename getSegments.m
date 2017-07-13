function [segments] = getSegments(redBdry, greenBdry)
    rsize = redBdry.size();
    gsize = greenBdry.size();
    s = 2*(rsize+gsize);
    segments = zeros(s,1);
    
    temp = CQueue;
    cnt = 1;
    
    while ~redBdry.isempty()
        curr = redBdry.front();
        redBdry.pop();
        temp.push(curr);
        segments(cnt) = curr(1);
        cnt = cnt+1;
        segments(cnt) = curr(2);
        cnt = cnt+1;
    end
    redBdry = temp;
    temp = CQueue;
    while ~greenBdry.isempty()
        curr = greenBdry.front();
        greenBdry.pop();
        temp.push(curr);
        segments(cnt) = curr(1);
        cnt = cnt+1;
        segments(cnt) = curr(2);
        cnt = cnt+1;
    end
    greenBdry = temp;
    segments = sort(segments);  
    finalSeg = [];
    thresh = 25;
    i = 1;
    while i<=size(segments,1)
       if i==size(segments,1)
           finalSeg(end+1) = segments(i);
           break;
       end
       if segments(i+1)-segments(i) < thresh
           disp(i);
          finalSeg(end+1) = (segments(i)+segments(i+1))/2;  
          i = i+2;
       else
           finalSeg(end+1) = segments(i);
           i = i+1;
       end
    end
    
    segments = finalSeg;
end