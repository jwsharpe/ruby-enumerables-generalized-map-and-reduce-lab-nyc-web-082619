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
      result = array[i] 
      i += 1 
    end
    for i in array.length do
     result = yield(result, source_array[i])
     i += 1 
    end 
    return result
end