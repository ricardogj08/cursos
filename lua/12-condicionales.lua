if true then
  print('Verdadero')
end

if 1 then
  print('Verdadero')
end

if 1 < 10 then
  print('Verdadero')
end

for i = 1, 10 do
  if i >= 5 then
    print(i)
    break
  end
end

local i = 1

while true do
  if i >= 8 then
    print(i)
    break
  end

  i = i + 1
end

local users = { 'Ricardo', 'Alejandra', 'Paco', 'Juan' }

-- Else.
for i, v in ipairs(users) do
  if v == 'Alejandra' then
    print(v, ':)')
  else
    print(v)
  end
end

local age = 60

-- Else if.
if age >= 60 then
  print('Mayor de edad')
elseif age >= 30 then
  print('Adulto')
elseif age >= 18 then
  print('Joven')
elseif age < 18 then
  print('Menor de edad')
end
