require '../primelib'

cnt=1
i=1
nth = 10001
while cnt < nth
    i += 2
    if (isprime(i))
        cnt += 1
    end
end

puts i
