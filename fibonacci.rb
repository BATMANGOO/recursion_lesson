def fibs(n)
  arr = []

  0.upto(n) do |i|
    case i
    when 0
      arr << 0
    when 1
      arr << 1
    else
      fib = arr[i - 1] + arr[i - 2]
      arr << fib
    end
  end
  arr
end

# p fibs(5)

def fibs_rec(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  arr = fibs_rec(num - 1)
  arr << arr[-2] + arr[-1]
end

puts fibs_rec(6)