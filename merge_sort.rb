arr = []

20.times do 
  arr << rand(200)
end

def merge_sort(arr)
  return arr if arr.length < 2

  mid = arr.length / 2

  left_half = merge_sort(arr.slice(0...mid))
  right_half = merge_sort(arr.slice(mid...arr.length))

  merge(left_half, right_half)
end

def merge(left_arr, right_arr)
  sorted = []

  while left_arr.any? && right_arr.any?
    left_arr[0] < right_arr[0] ? sorted.push(left_arr.shift) : sorted.push(right_arr.shift)
  end
  sorted.concat(left_arr).concat(right_arr)
end

p merge_sort(arr)