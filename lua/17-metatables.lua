local tbl = {}

local meta = {
  __index = function(t, k)
    print(t, k)
    return rawget(t, k)
  end,
  __newindex = function(t, k, v)
    print(t, k, v)
    rawset(t, k, v)
  end
}

setmetatable(tbl, meta)

-- __index
local test = tbl.key
print(test)

-- __newindex
tbl.key = 'Hola Mundo!'
print(tbl.key)
