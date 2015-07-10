def isprime(n)
    return false if n == 0
    return false if n == 1
    return true if n == 2
    return false if n % 2 == 0
    i = 3
    max = Math.sqrt(n).to_i + 1
    while i < max
        return false if n % i == 0
        i += 2
    end
    return true
end
