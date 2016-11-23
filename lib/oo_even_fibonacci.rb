# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit= limit
  end

  def sum
    index=2
    even_array=[]
    first= 1
    second=1

    while index<@limit
      new_number= first + second
      puts "sequence: #{new_number}"
      #binding.pry
      break if new_number>@limit
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

end
