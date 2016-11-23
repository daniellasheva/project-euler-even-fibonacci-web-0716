require 'pry'

#get the new term
#check if even
#if even, add to array
#update new last_term

def even_fibonacci_sum(limit)
  index=2
  even_array=[]
  first= 1
  second=1

  while index<limit
    new_number= first + second
    puts "sequence: #{new_number}"
    #binding.pry
    break if new_number>limit
    if new_number.even?
      even_array.push(new_number)
    end
    first = second
    second = new_number
    index=index+1
  end
  total= even_array.reduce(:+)
  puts even_array.to_s
  total

end

even_fibonacci_sum(10)
