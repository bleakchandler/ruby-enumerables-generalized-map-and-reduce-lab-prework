def map(s)
  new = []
  i = 0
  while i < s.length do
    new.push(yield(s[i])) 
    i += 1
  end
  return new
end

def reduce (array, starting_number = 1)
  count = 0
  starting_point = starting_number[0]
  while i < array.length do
     starting_point = yield(starting_point,array[count])
    count += 1
  end
  return starting_point
end

 source_array = [1,2,3]
    starting_point = 100
    
    reduce(source_array, starting_point){|memo, n| memo + n}

 value =  yield(value,array[count])

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
