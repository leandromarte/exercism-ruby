class Raindrops
  def self.convert number
    return '1' if number == 1
    return 'Pling' if number == 3
    return 'Plang' if number == 5
    return 'Plong' if number == 7

    halfNumber = number / 2
    result = ""

    for i in 1..halfNumber
      result += 'Pling' if (i == 3) && (number % 3 == 0)
      result += 'Plang' if (i == 5) && (number % 5 == 0)
      result += 'Plong' if (i == 7) && (number % 7 == 0)
    end

    return (!result.empty? ? result : number.to_s)
  end
end

module BookKeeping
  VERSION = 3
end