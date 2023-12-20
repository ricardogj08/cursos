local corrutina = coroutine.create(function ()
  print('Hola Mundo!')
end)

print(type(corrutina))

-- Obtiene el estatus de una corrutina
print(coroutine.status(corrutina))

-- Inicia la ejecución de una corrutina
coroutine.resume(corrutina)

print(coroutine.status(corrutina))
