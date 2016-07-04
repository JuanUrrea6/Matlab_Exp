function smoothed = rectFilt(x,width)
%Smoothing mean filter.
%First, check that length of the width is odd. If not, make it odd.
signal = x;
N = length(signal);
module = mod(width,2);
if (module == 0)
    width = width + 1;
end
lim = (width-1)/2;
smoothed = [];
%Smoothing the edges.
for j = 1:width
    actual = mean(signal(j:j+3));
    smoothed = [smoothed actual];
end
%Smoothing the signal body
for i = width+1:(N-width-1)
    actual = mean(signal(i-lim:i+lim));
    smoothed = [smoothed actual];
end
for k = N-width:N
    actual = mean(signal(k-3:k));
    smoothed = [smoothed actual];
end
end