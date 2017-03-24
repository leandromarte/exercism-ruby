class Array
  def accumulate
    modified = []
    each do |e|
      modified << yield(e)
    end

    modified
  end
end

module BookKeeping
  VERSION = 1
end