function concatenate(a1, a2)
  a = {}
  i = 1

  for k, v in pairs(a1) do
    a[i] = v
    i = i + 1
  end
  for k, v in pairs(a2) do
    a[i] = v
    i = i + 1
  end

  return a
end

a1 = { "foo", "bar" }
a2 = { "baz", "qux" }
a = concatenate(a1, a2)

for k, v in pairs(a) do
  print(v)
end
