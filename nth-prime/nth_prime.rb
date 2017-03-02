class Prime
  def self.nth n
    raise ArgumentError.new "Number can't be negative or 0. Insert a positive integer." if n <= 0

    last_prime = 2
    primes_count = 1
    i = 3
    while (primes_count < n) do
      if (prime? i)  
        last_prime = i
        primes_count += 1
      end
      i += 1        
    end
    last_prime
  end
 
  def self.prime? number
    (2 .. number/2).none? { |n| number % n == 0}
  end
end

module BookKeeping
  VERSION = 1
end