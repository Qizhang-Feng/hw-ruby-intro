# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = arr.inject(0){|r, e| r + e}
  return result
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort{|a,b| b <=> a}
  arr_len = [2, arr.length()].min
  result = arr[0...arr_len].inject(0){|r, e| r + e}
  
  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  arr_len = arr.length()
  if arr_len < 2
    return false
  end
  s = Set[]
  #puts s
  s.add(arr[0])
  for i in 1...arr_len
    target = n - arr[i]
    if s.include?(target)
      return true
    end
    s.add(arr[i])
  end
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  list = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
  first = s[0]
  if not( (first >= 'a' and first <= 'z') or (first >= 'A' and first <= 'Z'))
    return false
  end
  return (not list.include?(first))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  arr_len = s.length()
  if arr_len == 0
    return false
  end
  
  for i in 0...arr_len
    if (s[i] != '1' and s[i] != '0')
      return false
    end
  end
  s_i = s.to_i(2)
  return s_i%4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    #check if isbn is empty
    #puts '+++++++++++++++empty isbn'
    if isbn.empty?
      raise ArgumentError
    end
    
    @isbn=isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    price = price.to_f
    if price <= 0.0
      raise ArgumentError
    end
    @price = price
  end
  
  
  def price_as_string
    return "$#{"%.2f" % self.price}"
  end
end
