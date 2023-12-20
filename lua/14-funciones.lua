local function sumar(x, y)
  print(x + y)
end

sumar(8, 2)

local function restar(x, y)
  return x - y
end

local resta = restar(10, 2)

print(resta)

local function imprimir(...)
  print(...)
end

imprimir('Ricardo', 'García', 'Jiménez')

-- Return
local function search(array, item)
  for k, v in ipairs(array) do
    if item == v then
      print(k, v)
      break
    end
  end
end

-- Múltiples valores
local function alpha()
  return 'a', 'b', 'c'
end

local a, b, c = alpha()

print(a, b, c)

local users = { 'Ricardo', 'Alejandra', 'Sharai', 'Paco', 'Juan' }

search(users, 'Alejandra')

-- Declaración alternativa
local saludo = function()
  print('Hola Mundo! :)')
end

saludo()

-- Función global
function pow(number, base)
  return number ^ base
end

print(pow(8, 2))
