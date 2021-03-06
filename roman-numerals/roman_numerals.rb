class Integer
  ROMAN = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 
    50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

  def to_roman
    number = self
    result = ''

    ROMAN.each do |k, v|
      result += v * (number.div k)
      number -= (number.div k) * k
    end

    return result
  end
end

module BookKeeping
  VERSION = 2
end