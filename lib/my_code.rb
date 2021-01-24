def map(s)
  new = []
  i = 0
  while i < s.length do
    new.push(yield(s[i])) 
    i += 1
  end
  return new
end

def reduce (array, starting_number = 0)
  count = 0
  starting_point = starting_number
  while count < array.length do
     starting_point = yield(starting_point,array[count])
    count += 1
  end
  return starting_point
end

source_array = [1,2,3]
starting_point = 100
    
reduce(source_array, starting_point){|memo, n| memo + n}