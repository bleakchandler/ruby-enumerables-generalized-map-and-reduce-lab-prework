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
 s.each{ |number, starting_num|
    new = 1+1
  end
 }
  return new
end

reduce([1, 2, 3], 100){|n| n * n}

reduce([1,2,3], 100){|memo, n| memo + n}




def reduce_to_total(source_array, starting_point = 0)
  
  total = starting_point
  
  source_array.length.times { 
     |index|
  
     total = source_array[index] + total
   }
  total


def map_to_negativize(source_array)
#pipe "|" : It's the same as defining a method, only it's not stored beyond the method that accepts a block.

  source_array.length.times { 
    |index|
     source_array[index]=source_array[index] * -1
   }
   source_array
   
end
