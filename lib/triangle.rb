require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3, :valid, :type

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def tri_equality?
    sorted_sides = [@side1, @side2, @side3].sort
    greatest_side = sorted_sides.pop
    greatest_side < sorted_sides.sum
  end

  def valid?
    sides_array = [@side1, @side2, @side3]
    if sides_array.any? {|side| side == 0}
      @valid = false
    elsif sides_array.any? {|side| side < 0}
      @valid = false
    elsif self.tri_equality? == false
      @valid = false
    elsif sides_array.any? {|side| side.is_a?(Float)}
      @valid = true
    else
      @valid = true
    end
    @valid
  end

  def kind
    sides_array = [@side1, @side2, @side3]
    if self.valid? == false
      raise TriangleError
    else
      if ((@side1 == @side2) && (@side1 == @side3) && (@side2 == @side3))
        @type = :equilateral
      elsif ((@side1 == @side2) || (@side1 == @side3) || (@side2 == @side3))
        @type = :isosceles
      else
        @type = :scalene
      end
    end
    @type
  end

  class TriangleError < StandardError
  end
end
