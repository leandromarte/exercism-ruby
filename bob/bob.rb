class Bob
  def self.hey remark
    if (remark == remark.upcase && remark != remark.downcase)
      answer = "Whoa, chill out!"
    elsif (remark.end_with? "?") 
      answer = "Sure."
    elsif (remark.strip.empty?) 
      answer = "Fine. Be that way!"
    else 
      answer = "Whatever."
    end

    answer
  end
end