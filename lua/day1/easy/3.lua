function is_prime(num)
  local i
  for i = 2, num do
    if i * i > num then
      return true
    elseif num % i == 0 then
      return false
    end
  end
end

n = 10
i = 3
count = 0
while count < n do
  if is_prime(i) then
    print(i)
    count = count + 1
  end
  i = i + 10
end
