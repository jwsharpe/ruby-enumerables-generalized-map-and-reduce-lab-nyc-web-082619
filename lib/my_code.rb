# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  return new_array
end

def reduce(source_array, starting_point = nil)
    i = 0 
    if starting_point  
          result = starting_point
    else
      result = source_array[i] 
      i += 1 
    end   
    while i < source_array.length do
     result = yield(result, source_array[i])
     i += 1 
    end 
    return result
end