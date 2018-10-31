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

print(is_prime(31))
print(is_prime(45))
