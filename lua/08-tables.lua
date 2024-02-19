local tbl = { 'Ricardo', 'Ale' }

table.insert(tbl, 'Sharai')

tbl[4] = 'Paco'

tbl['msg'] = 'Hola Mundo!'

print(tbl[2])
print(tbl[4])
print(tbl['msg'])

local web = { 'PHP', 'CodeIgniter', 'Lua', 'OpenResty' }

-- Itera sobre una tabla indexada.
for i, v in ipairs(web) do
  print(i, v)
end

local user = {
  name = 'Ricardo García Jiménez',
  age = 24,
  gender = 'Masculino'
}

-- Itera sobre una tabla asociativa.
for k, v in pairs(user) do
  print(k, v)
end
