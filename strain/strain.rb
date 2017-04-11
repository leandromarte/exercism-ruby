module Strain
  def keep
    result = []
    each { |i| result << i if (yield i) }
    result 
  end

  def discard
    result = []
    each { |i| result << i unless (yield i) }
    result
  end
end

class Array
  include Strain
end