class Prime
  def self.nth n
    raise ArgumentError if n == 0

    primes = [2]
    i = 3
    while (primes.size < n) do
      if (prime? i)  
        primes.push i
      end
      i += 1

      i += 1 if (i % 2 == 0)
      i += 1 if (i % 3 == 0)   
    end
    return primes.last
  end

  private 
  def self.prime? number
    return ((1 .. number/2).collect{ |n| [n, number / n] if ((number / n) * n) == number }.compact.size == 1)
  end
end

module BookKeeping
  VERSION = 1
end