
def fib(num)
  result = []

  num.times do
    if result.length == 0
      result.append(0)
    elsif result.length == 1
      result.append(1)
    else
      result.append(result[-1] + result[-2])
    end
  end
  result
end

def fib_rec(num)
  if num == 1
    [0]
  elsif num == 2
    [0, 1]
  else
    prev = fib_rec(num - 1)
    curr = prev[-1] + prev[-2]
    prev.append(curr)
  end
end

p fib(8)
p fib_rec(8)