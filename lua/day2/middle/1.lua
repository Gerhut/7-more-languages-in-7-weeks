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

setmetatable(_G, {
  __newindex = function (table, key, value)
    if type(value) == 'table' then
      setmetatable(value, { __add = concatenate })
    end
    rawset(table, key, value)
  end
})

a1 = { "foo", "bar" }
a2 = { "baz", "qux" }
a = a1 + a2

for k, v in pairs(a) do
  print(v)
end
