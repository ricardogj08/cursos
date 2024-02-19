-- Variable global.
x = 5

-- Bloque o chunck.
do
  -- Variable con scope.
  local y = 2
  print(x, y)
end

print(x, y)

local z = 5

-- Chunck.
do
  local z = 3
  print(z)
end

print(z)
