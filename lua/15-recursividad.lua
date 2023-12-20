local function factorial(num)
  if num <= 1 then
    return 1
  end
  return num * factorial(num - 1)
end

print(factorial(5))
