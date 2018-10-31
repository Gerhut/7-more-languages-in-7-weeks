local _private = {}

function strict_read(table, key)
  if _private[key] then
    return _private[key]
  else
    error("Invalid key: " .. key)
  end
end

function strict_write(table, key, value)
  if value == nil then
    if _private[key] then
      _private[key] = nil
    else
      error("Invalid key: " .. key)
    end
  else
    if _private[key] then
      error("Duplicate key: " .. key)
    else
      _private[key] = value
    end
  end
end

local mt = {
  __index = strict_read,
  __newindex = strict_write
}

treasure = {}
setmetatable(treasure, mt)

treasure.gold = 100
treasure.gold = nil
