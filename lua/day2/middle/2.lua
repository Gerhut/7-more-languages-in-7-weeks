Queue = {
  new = function ()
    q = {}
    setmetatable(q, Queue)
    return q
  end,

  add = function (self, value)
    self[#self + 1] = value
  end,

  remove = function (self)
    local value = self[#self]
    self[#self] = nil
    return value
  end,
}
Queue.__index = Queue

local q = Queue.new()
q:add("item")
print(q:remove())
print(q:remove())
