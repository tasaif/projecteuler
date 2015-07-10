require 'pry'
require './table'

def gen_sets(t, x, y)
    retval = []
    # Down
    bad = false
    set = []
    (0..3).each do |i|
        if (y+i >= 20)
            bad = true
            break
        end
        set.push t[y+i][x]
    end
    if not bad
        retval.push set
    end

    # Down-left
    bad = false
    set = []
    (0..3).each do |i|
        if (y+i >= 20 or x-i < 0)
            bad = true
            break
        end
        set.push t[y+i][x-i]
    end
    if not bad
        retval.push set
    end

    # Down-right
    bad = false
    set = []
    (0..3).each do |i|
        if (y+i >= 20 or x+i >= 20)
            bad = true
            break
        end
        set.push t[y+i][x+i]
    end
    if not bad
        retval.push set
    end

    # Right
    bad = false
    set = []
    (0..3).each do |i|
        if (x+i >= 20)
            bad = true
            break
        end
        set.push t[y][x+i]
    end
    if not bad
        retval.push set
    end
    retval
end

def dump(sets)
    sets.each do |set|
        print "("
        set.each do |num|
            print "#{num} "
        end
        puts ")"
    end
end

t = gen_table
largest = 0
sets = []
(0..19).each do |y|
    (0..19).each do |x|
        sets += gen_sets(t, x, y)
    end
end
sets.each do |set|
    val = set.reduce :*
    largest = val if val > largest
end
puts largest
