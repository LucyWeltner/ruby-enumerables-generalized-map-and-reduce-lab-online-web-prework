# Your Code Here
require "pry"
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
  if startingpoint.class == Integer
    while i < array.length do
      startingpoint = yield(startingpoint, array[i])
      i += 1 
    end
  else 
    startingpoint = nil
    while i < array.length do
      startingpoint = yield(!!startingpoint, !!array[i])
      i += 1
    end
  end 
  startingpoint 
end