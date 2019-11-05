# Your Code Here
def map(array)
  i = 0 
  new_array = []
  while i < array.length 
    new_array << yield(array[i])
    i += 1
  end
  new_array
end 

def reduce(array, startingpoint = 0)
  i = 0 
  while i < array.length do
    startingpoint = yield(startingpoint, array[i])
    i += 1 
  end 
  startingpoint 
end