class SumOfMultiples
  
  def to(number)
    (0...number).select { |n| @multiples.any? { |m| n % m == 0 }}.inject(:+)
  end

  def initialize(*args)
    @multiples = args
  end
end