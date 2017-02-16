module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    result = 0

    raise ArgumentError if a.length != b.length

    a.split("").each_with_index do |char, index| 
      result += 1 if char != b[index]
    end

    return result
  end
end