require '../palindrome'

largest = 0
i = 100
while i <= 999
  j = 100
  while j <= i
    product = i * j
    if palindrome? product
      if product > largest
        largest = product
      end
    end
    j += 1
  end
  i += 1
end

puts largest
