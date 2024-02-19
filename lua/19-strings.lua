local name = 'Ricardo García Jiménez'

-- Obtiene la longitud de un string.
print(string.len(name))
print(name:len())

local letter = 'a'

-- Convierte caracteres a código ascii.
print(string.byte(letter))

-- Convierte códigos ascii a caracteres.
print(string.char(letter:byte()))

local input = 'Hola Mundo!'
local ascii = table.pack(string.byte(input, 1, #input))

for k, v in ipairs(ascii) do
  print(k, v)
end

local decode = string.char(table.unpack(ascii))
print(decode)

local fistname = 'Ricardo'
local lastname = 'García Jiménez'

-- Concatenación.
print(fistname .. ' ' .. lastname)

print(tonumber('16'))
print(tostring(false))

local function saludar()
  print('Hola Mundo!')
end

-- Obtiene la representación binaria de una función.
local binary = string.dump(saludar)
print(binary)

-- Ejecuta la representación binaria de una función.
load(binary)() -- Concatena los resultados.
loadstring(binary)()

local saludo = 'Hola Mundo! :)'

-- Obtiene el segmento de un string.
print(saludo:sub(6))
print(saludo:sub(13, 14))

-- Convierte en minúsculas y mayúsculas un string.
print(saludo:lower())
print(saludo:upper())

-- Invierte un string.
print(saludo:reverse())

-- Busca un string desde un patrón de búsqueda.
print(saludo:find('Mundo'))
print(saludo:find('%p', 1))
print(saludo:find('%p', 1, true)) -- Escapa los caracteres mágicos.

-- Versión de Lua.
print(_VERSION)
