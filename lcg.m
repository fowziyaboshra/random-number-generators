prompt = 'how many ranndom number do we want : ';
n = input(prompt);
m = 16;
a = 5;
c = 3;
zi = 7;
i = 1;
rand = [];
while i < n
    zi_half = a*zi+c;
    zi = mod(zi_half,m);
    %seed = zi
    rand(i) = zi/m;
    i = i+1;  
end
rand