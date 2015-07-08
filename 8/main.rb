require './p8'

def calc(buffer)
    return 0 if buffer.include? '0'
    retval = 0
    buffer = buffer.split('').delete_if do |c|
        c == '1'
    end
    buffer.each do |c|
        retval += c.to_i
    end
    return retval
end

def product(buffer)
    retval = 1
    buffer.split('').each do |c|
        retval *= c.to_i
    end
    return retval
end

w = big_number
win_len = 12
i = 0
max = w.length-win_len
largest = {window: [], val: 0}
while i < max
    window = w[i..i+win_len]
    val = calc(window)
    if (val > largest[:val]) then
        largest[:val] = val
        largest[:window] = window
    end
    i += 1
end
puts largest
puts product(largest[:window])
