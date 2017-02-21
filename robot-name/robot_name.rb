class Robot
  attr_reader :name

  def initialize 
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  private 
  def generate_name
    Kernel.srand
    letter1 = (65 + Random.rand(26)).to_i.chr
    letter2 = (65 + Random.rand()).to_i.chr

    digit1 = Random.rand(0..9)
    digit2 = Random.rand(0..9)
    digit3 = Random.rand(0..9)

    return letter1 + letter2 + digit1.to_s + digit2.to_s + digit3.to_s
  end
end

module BookKeeping
  VERSION = 2
end