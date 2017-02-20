class Sieve
  def primes
    return [] if @limit == 1
    return [2] if @limit == 2

    prime_limit = Math.sqrt(@limit).to_i
    result_list = *(2 .. @limit)
    primes_list = *(2)

    while (primes_list.last <= prime_limit) do
      result_list.each do |item|
        result_list.delete(item) if (item % primes_list.last == 0)
      end

      primes_list.push(result_list.shift)
    end

    return primes_list + result_list
  end

  def initialize(limit) 
    @limit = limit
  end
end

module BookKeeping
  VERSION = 1 
end
