function reverse_num(val)
 
  local reverse = 0
  local last = 0
  while (val > 0)
  do
    last = val % 10
    reverse = (reverse * 10) + last
    val = math.floor(val / 10)
  end
  return reverse
end
 
function pal_interval(val)
 
  local reversed_num = reverse_num(val)
  return tonumber(reversed_num) + val
 
end
 
function is_pal(val)
 
  if (val==reverse_num(val)) then
    return true
  end
  return false
end
 
function is_lych(targ)
 
  local temp = targ
  for i = 0,50,1
    do
      if (is_pal(temp)) then
        return false
      else
        temp = pal_interval(temp)
      end
  end
  return true
end
 
local result = 3
local curtime = os.clock()
local s = 0
 
for targ = 11,10000,1
 
  do
    is_lynch_number = is_lych(targ)
    if is_lynch_number then
      result = result+1
    end
  end
 
print(result)
print(
  string.format("elapsed time: %.2f\n", (os.clock() - curtime) * 1000)
)
 
