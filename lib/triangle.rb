class Triangle
  attr_accessor :sideA, :sideB, :sideC

	def initialize(sideA, sideB, sideC)
		@sideA = sideA
		@sideB = sideB
		@sideC = sideC
	end

	def kind

		check_errors

		if @sideA == @sideB && @sideB == @sideC 
			return :equilateral
		elsif 
		 	 sideA != sideB && sideB != sideC && sideA != sideC
			return :scalene
		else
			return :isosceles

		end

	end

	def check_errors
		if @sideA <= 0|| @sideB <= 0 || @sideC <= 0
			raise TriangleError
		elsif
			(@sideA + @sideB <= @sideC) || (@sideB + @sideC <= @sideA) || (@sideA + @sideC <= @sideB) 
			raise TriangleError
		end
	end
class TriangleError < StandardError

end
end 
