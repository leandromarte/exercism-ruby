class Series
  def initialize(str)
    @serie = str
  end

  def slices(len)
    raise ArgumentError.new("Argument cannot be greater than string length. ") if @serie.length < len

    @serie.each_char.with_index.map { |char, index| @serie.slice(index, len) }.find_all { |e| e.length == len }
  end
end