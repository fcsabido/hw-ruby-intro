# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sol = 0
  arr.each{|elem| sol = sol + elem}
  return sol
end

def max_2_sum arr
  # YOUR CODE HERE
  n = arr.length
  sol = 0
  max1 = 0
  max2 = 0
  if n > 1
    if arr[0] > arr[1]
      max1 = arr[1]
      max2 = arr[0]
    else
      max1 = arr[0]
      max2 = arr[1]
    end
    arr.each{|elem|
      if elem >= max1
        max2 = max1
        max1 = elem
      end
    }
    sol = max1 + max2
  elsif n == 1
    sol = arr[0]
  end
  
  return sol
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  m = arr.length
  for i in 0..(m-1) do
    for j in 0..(m-1) do
      if i!=j
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if !!(s =~ /^[a-zA-Z&&[^AEIOUaeiou]].*$/)
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Are we considering 0*4 as a multiple of 4?
  if !!(s =~ /^0{1,2}$/)
    return true
  end
  
  # Any binary number multiple of four should
  # have at least one '1' and end on '00'
  if !!(s =~ /1/)
    if !!(s =~ /^[01]+00$/)
      return true
    end
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Expected a non-empty string, got #{isbn}"
    ) if isbn.length == 0
    @isbn = isbn
    
    raise ArgumentError.new(
      "Expected a positive number, got #{price}"
    ) if price <= 0
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price=new_price
  end
  
  def price_as_string
    if (@price.is_a?(Integer))
      return "$" + price.to_s + ".00"
    else
      temp = @price - @price.floor
      return "$" + @price.floor.to_s + "." + (temp.to_s)[2..3]
    end
    
  end
end
