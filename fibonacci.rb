
def fib(num)

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

p fib_rec(8)