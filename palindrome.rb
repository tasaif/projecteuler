def palindrome?(n)
  s = n.to_s
  s == s.reverse
end
