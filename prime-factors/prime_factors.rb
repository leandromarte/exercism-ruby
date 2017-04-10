class PrimeFactors
  def self.for(number)
    divisor = 2
    divisors = Array.new

    while number > 1
      if ((number % divisor) == 0)
        number /= divisor
        divisors << divisor
      else 
        divisor += 1
      end
    end

    divisors
  end
end