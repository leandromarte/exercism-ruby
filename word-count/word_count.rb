class Phrase
  def word_count
    result = Hash.new(0)
    @phrase.downcase!
    splitted = @phrase.split(/(?!(?<=\w)'(?=\w))\W+/).each { |w| result[w] += 1 }
    result 
  end

  def initialize phrase
    @phrase = phrase
  end
end

module BookKeeping
  VERSION = 1
end