function for_loop(a, b, f)
  local i = a
  while i <= b do
    f()
    i = i + 1
  end
end

for_loop(1, 5, function ()
  print('Execute')
end)
