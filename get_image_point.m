function [loc] = get_image_point (I)
%figure('name','Doubleclick to set location');
imshow(uint8(I));
[c r] = getpts;
loc = int32([c r]);
if size(loc)>1
    loc = [loc(1,1) loc(1,2)];
end
close all;
end