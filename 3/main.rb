require '../primelib'

target = 600851475143
i = 2
while true
    if (target % i == 0)
        quotient = target / i
        break if (isprime(quotient))
    end
    i += 1
end

puts quotient
