# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #empty
  return 0 if arr.empty?
  
  #sum
  return arr.sum
end

def max_2_sum arr
  #empty
  return 0 if arr.empty?
  
  #sum
  return arr.max(2).sum
end


def sum_to_n? arr, n
  #empty
  return false if arr.empty?
  
  #length=1
  return false if arr.length == 1
  len = arr.length - 1
  
  #sum=n
  for i in 0..(len-1) do
    for j in (i+1)..(len) do
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  
  #else
  return false
  
end




# Part 2

def hello(name)
  return "Hello, " + name
end


def starts_with_consonant? s
  #empty
  return false if s.empty?
  
  #nonletters
  return false if !/[[:alpha:]]/.match(s[0])

  #consonant
  if /[qwrtypsdfghjklzxcvbnmQWRTYPASDFGHJKLZXCVBNM]/.match(s[0])
    return true
  end

  #else
  return false
end


def binary_multiple_of_4? s
  #bin
  for char in s.each_char
    if !/[01]/.match(char)
      return false
    end
  end
  
  #0
  if s == '0'
    return true
  end
  
  #mutiple of 4
  return true if /00$/.match( s )

end





# Part 3

class BookInStock
  #init
  def initialize(isbn,price)
    raise ArgumentError.new('Wrong Price') if price<=0
    raise ArgumentError.new('Wrong ISBN') if isbn.empty?
    
    @isbn = isbn
    @price = price
  end
  
  #change price isbn
  attr_accessor :isbn, :price
  
  def price_as_string
    '$%.2f' % @price
  end
end
