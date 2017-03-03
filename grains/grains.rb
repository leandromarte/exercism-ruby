class Grains
  def self.square num
    raise ArgumentError.new "Number must be between 1 and 64." if !num.between? 1, 64

    2 ** (num - 1)
  end

  def self.total
    (1..64).inject { |sum, v|  sum = sum + Grains.square(v) }
  end
end

module BookKeeping
  VERSION = 1  
end
