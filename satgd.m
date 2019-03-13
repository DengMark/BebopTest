function [ y ] = satgd( x,a )
temp = norm(x,Inf);
    if  temp<=a
        y = x;
    else
        y= a*x/temp;
    end
end


