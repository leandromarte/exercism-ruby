class Squares

  def square_of_sum
    result = 0
    
    @number.times do |n|
      result += n + 1
    end

    return result ** 2   
  end

  def sum_of_squares
    result = 0

    @number.times do |n|
      result += (n + 1)**2
    end    

    return result 
  end

  def difference
    return square_of_sum - sum_of_squares
  end

  def initialize number
    @number = number
  end
end

module BookKeeping
  VERSION = 3
end