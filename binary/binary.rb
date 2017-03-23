class Binary
  def self.to_decimal bin
    raise ArgumentError.new "Invalid input. Only 0 and 1's are allowed." unless bin.match(/^[0-1]+$/)

    decimal = 0
    bin.reverse!

    bin.each_char.with_index do |char, index|
      decimal += char.to_i * (2 ** index)
    end

    decimal
  end
end

module BookKeeping
  VERSION = 3
end