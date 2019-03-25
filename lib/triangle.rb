require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two 
    @side_three = side_three 
  end 
  
  def is_valid?
    if (side_one + side_two) <= side_three || (side_two + side_three) <= side_one || (side_one + side_three) <= side_two
      raise TriangleError
    elsif side_one <= 0 || side_two <= 0 || side_three <= 0
      raise TriangleError
    elsif side_one == nil || side_two == nil || side_three == nil
      raise TriangleError
    end 
  end 
    
  def kind 
    is_valid? 
    if @side_one == @side_two && @side_three == @side_one
      return :equilateral 
    elsif @side_one == @side_two || @side_two == @side_three || @side_three == @side_one 
      return :isosceles
    else 
      return :scalene 
    end 
  end 
  
  class TriangleError < StandardError 
    def message
      "Invalid Triangle!"
    end
  end
  
end

