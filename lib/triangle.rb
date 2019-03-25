class Triangle
  # write code here
  attr_accessor :num1, :num2, :num3
    
    def initialize(num1,num2,num3)
      @num1 = num1
      @num2 = num2
      @num3 = num3
    end
    
    def kind
      if @num1 == 0 && @num2 == 0 && @num3 == 0
        raise TriangleError
      elsif @num1.abs != @num1 || @num2.abs != @num2 || @num3.abs != @num3
        raise TriangleError
      elsif (@num1 + @num2) <= @num3 || (@num2 + @num3) <= @num1 || (@num1 + @num3) <= @num2
        raise TriangleError
      elsif @num1 != @num2 && @num2 != @num3 && @num1 != @num3
        return :scalene
      elsif @num1 == @num2 && @num2 == @num3 && @num1 == @num3
        return :equilateral
      else
        return :isosceles 
      end
    end
    
    class TriangleError < StandardError
      
    end
    
end
