function reduce(max, init, f)
  local i
  local result = init
  for i = 1, max do
    result = f(result, i)
  end
  return result
end

function add(previous, next)
  return previous + next
end

print(reduce(5, 0, add))
