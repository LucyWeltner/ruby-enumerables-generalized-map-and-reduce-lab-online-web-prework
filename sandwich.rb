def make_a_sandwich(string1, string2) 
  base = "A #{string1} and #{string2} sandwich"
  if string1[0] == string1[0].upcase
    base = "#{string1} and #{string2} sandwich"
  end
  yield(base)
end

 make_a_sandwich("Ham", "bicycle") do |base| 
  p "#{base} on rye" end
  
def my_own_map(array)
  array.map{|n| n*-1}
end 

p my_own_map([1,2,3,4,-2])

def map(array)
  i = 0 
  new_array = []
  while i < array.length 
    new_array << yield(array[i])
    i += 1
  end
  new_array
end 

p map([1,2,3,4,-2]){|n| n-1}

def reduce(array, startingpoint = 0)
  i = 0 
  while i < array.length do
    startingpoint = yield(array[i], startingpoint)
    i += 1 
  end 
  startingpoint 
end

p reduce([ false, nil, nil, nil]) {|i, startingpoint| 
  startingpoint && i
}