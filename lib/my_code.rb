# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  return new_array
end

def reduce(array, start = nil)
  if start 
    result = start
    i = 0
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