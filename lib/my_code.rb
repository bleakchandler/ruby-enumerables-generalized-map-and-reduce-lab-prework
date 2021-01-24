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



def reduce_to_total(source_array, starting_point = 0)
  
  total = starting_point
  
  source_array.length.times { 
     |index|
  
     total = source_array[index] + total
   }
  total
