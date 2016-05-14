# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr.sort.last(2).reduce(0, :+)
end

def sum_to_n? arr, n
  arr.permutation(2).any? {|val1, val2| val1 + val2 == n}
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
  return true if s == '0'
  s =~ /^[10]*0{2}$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise(ArgumentError) if isbn.empty? || price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % @price
  end
end
