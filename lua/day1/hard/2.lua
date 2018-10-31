function reduce(max, init, f)
  local i
  local result = init
  for i = 1, max do
    result = f(result, i)
  end
  return result
end

function factorial(n)
  return reduce(n, 1, function (previous, next)
    return previous * next
  end)
end

print(factorial(5))
