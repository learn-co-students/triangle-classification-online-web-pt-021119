require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3, :valid, :type

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    sides_array = [@side1, @side2, @side3]
    if sides_array.any? {|side| side == 0}
      @valid = false
    elsif sides_array.any? {|side| side < 0}
      @valid = false
    # ADD ELSIF: if the sum of the lengths of any two sides of a triangle is smaller than the length of the third side, then it is
    elsif sides_array.any? {|side| side.is_a?(Float)}
      binding.pry
      @valid = true
    else
      @valid = true
    end
  end

  def kind
    sides_array = [@side1, @side2, @side3]
    if self.valid? == false
      # raise an error if the triangle is invalid
      raise TriangleError
    else
      @type = :equilateral if @side1 == @side2 && @side1 == @side3
      binding.pry
      if
        @type = :isosceles
      end
        # :scalene
          # no equal sides
    end
    @type
  end

  class TriangleError < StandardError
  end
end
