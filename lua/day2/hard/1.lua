function retry(count, body)
  for i = 1, count do
    local generator = coroutine.create(body)
    local _, value = coroutine.resume(generator)
    if type(value) ~= 'string' then
      return
    end
  end
  print('Failed')
end

retry(5,

  function()
    if math.random() > 0.2 then
      coroutine.yield('Something bad happend')
    end

    print('Succeeded')
  end
)
