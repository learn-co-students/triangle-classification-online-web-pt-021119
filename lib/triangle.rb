class Triangle
  
  def initialize(right,left,bottom)
    @right = right
    @left = left
    @bottom = bottom
  end

  def kind()
    if (@right <= 0) || (@left <= 0) || (@bottom <= 0)
      raise TriangleError
    elsif (@right+@left <= @bottom) || (@right+@bottom <= @left) || (@left+@bottom <= @right)
      raise TriangleError
    else
      if (@right == @left) && (@left == @bottom)
        :equilateral
      elsif (@right == @left) || (@left == @bottom) || (@right == @bottom)
        :isosceles
      elsif (@right != @left) && (@left != @bottom) && (@right != @bottom)
        :scalene
      end
    end

  end

  class TriangleError < StandardError
    "Oooops! Something wrong. Don't worry, take a minute and relax. Think about your favorite dish. Fills good, right?! :)"
  end

end
