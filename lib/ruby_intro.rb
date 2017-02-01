# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |x| 
    sum+= x
  end
  sum
end

def max_2_sum arr
  length = arr.length
  if arr.empty? 
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    arr.sort!
    ar = arr[length-1]
    ar2 = arr[length-2]
    ar + ar2
  end 
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end 
  arr.each_with_index do |y, index1| 
    arr.each_with_index do |x, index2| 
      if x+y == n && index1 != index2
        return true
      end 
    end
  end
  return false 
end

# Part 2

def hello(name)
    greetings = "Hello, " + name
    greetings
end

def starts_with_consonant? s
  arr = s.split("")
  if s.length == 0
    return false
  elsif arr[0] =~ /[bcdfghjklmnpqrstvwxyz]/i
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s =~ /^[01]+$/
    num = s.to_i(2)
    if num%4==0
      return true
    else 
      return false 
    end 
  end 
return false 
end

# Part 3

class BookInStock
  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
	  raise ArgumentError, "Invalid" if price <= 0 || (isbn.empty? == true)
		@isbn = isbn
		@price = price
	end
	
	def price_as_string
	 num = "$%.2f" % @price
	 num
	end 

end
