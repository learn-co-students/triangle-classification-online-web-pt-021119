class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    a = [@side1, @side2, @side3].sort
    if a.uniq.length == 3 && a[0]+a[1]>a[2]
      return ("scalene").to_sym
    elsif a.uniq.length == 2 && a[0]+a[1]>a[2]
      return ("isosceles").to_sym
    elsif a.uniq.length == 1 && a[0]+a[1]>a[2]
      return ("equilateral").to_sym
    else
      begin
        raise TriangleError
#      rescue TriangleError => error
#          puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a triangle."
    end
  end

end
