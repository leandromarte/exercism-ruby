class Complement
  def self.of_dna(dna)
    rna = ""

    dna.split("").each do |char|
      
      if char == "G"
        rna += "C" 
      elsif char == "C"
        rna += "G" 
      elsif char == "T"
        rna += "A" 
      elsif char == "A"
        rna += "U" 
      else 
        rna = ""
        break
      end
    end

    rna
  end
end

module BookKeeping
  VERSION = 4
end