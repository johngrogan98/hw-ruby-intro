# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  s = 0
  for x in arr do 
    s = s + x
  end
  return s
end

def max_2_sum(arr)
  s = 0
  first = -100000000
  second = -10000000
  temp = -100000000
  
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  for x in arr do
    if x > second
      temp = second
      second = x
      if x > first
        second = temp
        first = x
      end
    end
  end
  s = first + second
  return s
end

def sum_to_n?(arr, n)
  s = 0
  t = 0
  for x in arr do
    for y in arr do
      if s != t
        if x + y == n
          return true
        end
      end
      t = t + 1
    end
    s = s + 1
    t = 0
  end
  return false
end
          
################################################################################
# Part 2

def hello(name)
  s = "Hello, " + name
  return s
end

def starts_with_consonant?(s)
  lower = s.downcase
  
  if s.length == 0
    return false
  end
  
  if lower[0] =~ /[[:alpha:]]/
    if lower[0] =~ /[aeiou]/
      return false
    else 
      return true
    end
  end
  return false
end

def binary_multiple_of_4?(s)
  len = s.length
  i = 0
  z = 0
  
  if len == 0
    return false
  end
  
  while i < len do 
    if s[i] != '0' and s[i] != '1'
      z = z + 1
    end
    i = i + 1
  end
  
  if z > 0
    return false
  end
  
  i = 0
  sum = 0
  rev = s.reverse
  
  while i < len do 
    if rev[i] == '1'
      sum = sum + 2**i
    end
    i = i + 1
  end
  if sum.modulo(4) == 0
    return true
  else
    return false
  end
end

###############################################################################
# Part 3

class BookInStock
  def initialize(i, p)
    if i.length != 0
      @isbn = i
    else
      raise ArgumentError
    end
    if p > 0
      @price = p
    else
      raise ArgumentError
    end
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn) 
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price) 
    @price = price
  end
  
  def price_as_string
    s = @price.to_s
    len = s.length
    i = 0
    count = 0
    dot = false
    
    while i < len
      if s[i] == '.'
        dot = true
      end
      if dot == true
        count = count + 1
      end
      i = i + 1
    end
    
    if count == 0
      s = '$' + s + '.00'
    elsif count == 2
      s = '$' + s + '0'
    else
      s = '$' + s
    end
    
    return s
  end
end

