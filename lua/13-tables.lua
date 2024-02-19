local users = { 'Alejandra', 'Ricardo', 'Paco', 'Juan' }

-- Obtiene el tamaño de un array indexado.
print(#users)

for i = 1, #users do
  print(users[i])
end

-- Obtiene el índice mayor de un array indexado.
print(table.maxn(users))

local web = { 'PHP', 'CodeIgniter', 'SQL', 'Lua', 'OpenResty' }

for k, v in ipairs(web) do
  print(k, v)
end

print(#web)

-- Elimina el último elemento de un array indexado.
table.remove(web)

for k, v in ipairs(web) do
  print(k, v)
end

print(#web)

-- Elimina un elemento específico de un array indexado.
table.remove(web, 2)

for k, v in ipairs(web) do
  print(k, v)
end

print(#web)

local alpha = { 'c', 'b', 'a' }

-- Ordena de manera ascendente los elementos de un array indexado.
table.sort(alpha)

for k, v in ipairs(alpha) do
  print(k, v)
end

-- Ordena de manera descendente los elementos de un array indexado.
table.sort(alpha, function(a, b)
  return a > b
end)

for k, v in ipairs(alpha) do
  print(k, v)
end

local msg = { 'Hola', 'Mundo', ':)' }

-- Concatena todos los elementos de un array indexado.
print(table.concat(msg))

-- Concatena todos los elementos de un array indexado con separador.
print(table.concat(msg, ' '))

-- Concatena todos los elementos de un array indexado
-- dado los límites de las posiciones del array.
print(table.concat(msg, ' ', 2))
print(table.concat(msg, ' ', 2, 3))

local x, y, z = 'a', 'b', 'c'

-- Empaqueta los argumentos de la función en un array indexado.
local tbl = table.pack(x, y, z)

for k, v in ipairs(tbl) do
  print(k, v)
end

-- Desempaqueta los elementos de un array indexado.
print(table.unpack(tbl))

local alpha1 = { 'a', 'b', 'c' }
local alpha2 = { 'd', 'e', 'f' }

-- Copia los elementos de un array indexado a otra.
table.move(alpha2, 1, #alpha2, #alpha1 + 1, alpha1)

for k, v in ipairs(alpha1) do
  print(k, v)
end
