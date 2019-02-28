prompt = 'how many random number do we want : ';
n = input(prompt);

prompt = 'enter seed : ';
seed = input(prompt);
format SHORT
temp = seed;
digit = 4; 
arr = [];
rand = [];
i = 1;
while i<=n 
    square_value = seed * seed
    j = 1;
    while square_value > 0
        a = mod(square_value,10);
        arr(j) = a;
        j = j+1;
        square_value = floor(square_value/10) ;       
    end
    arr
    arr2 = fliplr(arr)
    k = 3;
    temp = 0;
    while k < 7
        a = arr2(k);
        temp = temp*10+ a;
        k = k+1;
    end
 seed = temp;
 rand(i) = temp/10000; 
 i = i+1;  
end
rand