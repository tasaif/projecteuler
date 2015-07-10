require '../primelib'

def sumoall(below)
    retval = 2
    i = 3
    while i < below
        retval += i if (isprime(i))        
        i += 2
    end
    retval
end

puts sumoall 2000000
