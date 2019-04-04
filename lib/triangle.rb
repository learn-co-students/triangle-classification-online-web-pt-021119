class Triangle
  attr_accessor  :s1, :s2, :s3 
  
  def initialize(s1, s2, s3)
    @triangle_side = []
    @triangle_side << s1 
    @triangle_side << s2
    @triangle_side << s3
  end
  
  def valid? 
    total_one_two = @triangle_side[0] + @triangle_side[1] 
    total_one_three = @triangle_side[0] + @triangle_side[2]
    total_two_three = @triangle_side[1] + @triangle_side[2]
    if (@triangle_side.none? {|side| side <= 0}) && (total_one_two > @triangle_side[2] && total_one_three > @triangle_side[1] && total_two_three > @triangle_side[0])
      return true 
    else 
      false 
    end
  end
  
  def kind 
    if valid?
      if @triangle_side.uniq.length == 3
        return :scalene
      elsif @triangle_side.uniq.length == 2 
        return :isosceles
      else 
        return :equilateral
      end
    else 
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
  end
end
