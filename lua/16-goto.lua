local i = 1

::start::
  if i > 5 then
    goto done
  end

  print(i)

  i = i + 1
goto start

::done::
