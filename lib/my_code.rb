# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  return new_array
end

def reduce(array, sum=0)
  value = 0;
  for i in array do
    value += yield()
  end
  return value
  