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
    elsif # if the sum of the lengths of any two sides of a triangle is smaller than the length of the third side, then it is NOT VALID
    else
      @valid = true
    end
    @valid = true if @side1 == @side2 && @side1 == @side3
  end

  def kind
    if self.valid? == false
      # raise an error if the triangle is invalid
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      @type = :equilateral if @side1 == @side2 && @side1 == @side3
      # don't raise an error and return, as a symbol the type
        # :equilateral
          # equal sides
        # :isosceles
          # two sides equal
        # :scalene
          # no equal sides
    end
    @type
  end

  class TriangleError < StandardError
    def message
      puts "That is illegal."
    end
  end
end
