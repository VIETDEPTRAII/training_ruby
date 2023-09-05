def linear_search(arr, target)
  arr.each_with_index do |value, index|
    return index if value == target
  end

  return -1
end

array = [1, 4, 2, 6, 8, 13, 10]
target = 9
index = linear_search(array, target)
if index != -1
  puts "#{target} found at index #{index}"
else
  puts "#{target} not found in the array"
end
