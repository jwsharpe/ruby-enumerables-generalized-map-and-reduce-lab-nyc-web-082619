# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  return new_array
end

def reduce(array, starting_value = nil)
  if starting_value != nil 
     block = starting_value
      i = 0
   else 
     block = array[0]
     i = 1 
   end 
  while i < array.length 
      block = (yield(block, array[i]))
    i += 1
end 
   return block 
 end  