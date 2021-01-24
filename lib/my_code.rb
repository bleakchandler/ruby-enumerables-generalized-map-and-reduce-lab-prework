def map(s)
  new = []
  i = 0
  while i < s.length do
    new.push(yield(s[i])) 
    i += 1
  end
  return new
end

def reduce(array,*starting)
  if starting[0]
    value = starting[0]
    count = 0
    else
    value = array[0]
    count = 1
  end

  while count < array.count do
    value =  yield(value,array[count])
    count+=1
  end 
 value
 end