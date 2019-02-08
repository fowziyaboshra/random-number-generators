# random-number-generators
generate random numbers using popular algorithms 
prompt = 'how many random number do we want : ';
n = input(prompt);
p = 11;
q = 19;
m = p*q;
xi = 3;
size = 4;
n = n*size;
par = [];
i =1;
rand = [];
while i <= n
    xi_square = xi^2;
    xi_mod = mod(xi_square,m);
    binary = dec2bin(xi_mod);
    j = 1;
    cnt = 0;
    while j <= length(binary)
      if binary(j) == '1'
        cnt = cnt + 1;      
      end
      j = j+1;
    end
    if mod(cnt,2) == 0
      par(i) = 1;
    else
      par(i) = 0;
    end
    xi = xi_mod;
    i = i+1;
end
par
i = 1;
j = 1;
k = 4;
while j <= length(par)
      temp = par(j:k);
      temp = num2str(temp);
      j = j+4;
      k = k+4;
      rand(i) = bin2dec(temp);
      i = i+1;
end
rand
