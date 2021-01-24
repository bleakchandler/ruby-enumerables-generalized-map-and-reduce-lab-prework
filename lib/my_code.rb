def map(s)
  new = []
  i = 0
  while i < s.length do
    new.push(yield(s[i])) 
    i += 1
  end
  return new
end

def reduce(s, n = 0)
  new = n
 
  starting = n
 s.each{ |number|
    new = number + new 
  end
 }
  return new
end

reduce([1, 2, 3], 100)
