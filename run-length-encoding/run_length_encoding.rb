class RunLengthEncoding
  def self.encode input
    previous_char = ""
    count_char = 1
    output = ""

    input.each_char do |char|
      if previous_char != "" 
        if previous_char == char 
          count_char += 1
        else
          output += (count_char > 1 ? count_char.to_s : "") + previous_char
          count_char = 1
        end
      end
      previous_char = char
    end

    output += (count_char > 1 ? count_char.to_s : "") + previous_char
    output
  end

  def self.decode input
    output = ""

    input.scan(/([0-9]*)([\D])/) do |times, char|
      output += char.to_s * (!times.empty? ? times.to_i : 1)
    end

    output 
  end
end

module BookKeeping
  VERSION = 2
end