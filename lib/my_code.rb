# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  return new_array
end

def reduce(array, start = nil)
  i = 0
  
  if start 
    result = start
  else 
    result = array[0]
    i = 1
  end 
  
  while i < array.length 
    result = (yield(result, array[i]))
    i += 1
  end 
  
  return result 
end  