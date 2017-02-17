class Pangram
  def self.pangram? phrase
    newPhrase = phrase.downcase.gsub(/[^A-Za-z]/, "")
    return ('a'..'z').all? {|c| newPhrase.include? c }
  end
end

module BookKeeping
  VERSION = 3
end