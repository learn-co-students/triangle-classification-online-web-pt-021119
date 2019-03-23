class Triangle
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if self.s1 + self.s2 <= self.s3
      raise TriangleError
    elsif self.s1 == self.s2 && self.s2 == self.s3 #equilateral
      :equilateral
    elsif self.s1 != self.s2 && self.s2 != self.s3 && self.s3 != self.s1 #scalene
      :scalene
    elsif self.s1 == self.s2 || self.s2 == self.s3 || self.s3 == self.s1 #isosceles
      :isosceles
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
