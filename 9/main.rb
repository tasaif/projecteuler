require 'pry'

def sum(set)
    set.reduce :+
end

def product(set)
    set.reduce :*
end

def increment(set, i=1)
    case i
    when 0
        set[0] += 1
        set[1] = set[0] + 1
        set[2] = 1000 - set[1] - set[0]
        return false if not set[1] < set[2]
    when 1
        set[1] += 1
        set[2] = 1000 - set[1] - set[0]
        return increment(set, 0) if not set[1] < set[2]
    end
    return set
end

def pythagorean?(set)
    a = set[0]
    b = set[1]
    c = set[2]
    return true if (a*a + b*b == c*c)
end

def gen_list
    i = 1
    j = 2
    k = 997
    set = [i, j, k]
    retval = [set]
    done = false
    while true
        set = increment(set)
        break if set.class != Array
        if pythagorean? set
            puts product set
            break
        end
    end
    retval
end

list = gen_list
