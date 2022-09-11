# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.sum
end

def max_2_sum(arr)
  if arr.size ==0
    return 0
  elsif arr.size==1
    return arr.at(0)
  end
  first,second = arr.max(2)
  return first + second
end

def sum_to_n?(arr, number)
  hashSet = Set.new
  arr.each{ |num|
    if hashSet.include?(number-num)
      return true
    else
      hashSet.add num
    end
  }
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  if string.start_with?('A','E','I','O','U','a','e','i','o','u') || string.size==0
    return false
  elsif string[0].match?(/[[:alpha:]]/) 
    return true
  end
end

def binary_multiple_of_4?(string)
  if string.size == 0 or not string !~ /[^01]/
    return false
  elsif (string.to_i(2))%4 == 0
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    if isbn.empty? || (price <= 0)
      raise ArgumentError.new("Please enter valid arguments- ISBN cannot be empty and Price should be greater than or equal to 0")
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    formattedstr = format("%.2f",@price)
    return "$" + formattedstr
  end
end
