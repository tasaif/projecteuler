def sum(set)
    set.reduce :+
end

def increment(set, index)
    case index
    when 0
        set[0] += 1
        set[1] = set[0] + 1
        set[2] = 1000 - set[0] - set[1]
        return 0 if not set[2] > set[1]
    when 1
        set[1] += 1
        set[2] = 1000 - set[0] - set[1]
        return 1 if not set[2] > set[1]
    end
    #puts "#{set[0]}, #{set[1]}, #{set[2]}"
    return set
end

def gen_list
    i = 1
    j = 2
    k = 997
    set = [i, j, k]
    retval = [set]
    done = false
    while true
        next_set = increment(set, 1)
        case next_set
        when 0
            dont = true
            break
        when 1
            next_set = increment(set, 0)
            if next_set.class == 'Fixnum' 
                done = true
                break
            end
            set = next_set
            retval.push set
        else
            set = next_set
            retval.push set
        end
        break if done
    end
    retval
end

list = gen_list
