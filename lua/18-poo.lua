-- Atributos.
local animal = {
  name = 'Chato',
  color = 'Black',
  x = 0,
  y = 0
}

-- Constructor.
function animal:new(object)
  return setmetatable(object or {}, {
    __index = self
  })
end

-- Métodos.
function animal:up()
  self.y = self.y + 1
end

function animal:down()
  self.y = self.y - 1
end

function animal:right()
  self.x = self.x + 1
end

function animal:left()
  self.x = self.x - 1
end

function animal:getName()
  print('Name:', self.name)
end

function animal:getColor()
  print('Color:', self.color)
end

function animal:getPosition()
  print('x:', self.x)
  print('y:', self.y)
end

-- Instancia del objeto.
local cuyo = animal:new({
  name = 'Cuyín',
  color = 'Brown'
})

cuyo:getName()
cuyo:getColor()
cuyo:up()
cuyo:right()
cuyo:getPosition()

animal:getName()
animal:getColor()
animal:getPosition()
