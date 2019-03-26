class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
     triangle_check = [(a + b > c), (a + c > b), (b + c > a)]
     #formula for a valid triangle
     [a, b, c].each { |s| triangle_check.push(false) if s <= 0 }
     #checks each senario of sides to see if false
     raise TriangleError if triangle_check.include?(false)
   end

#custom error class is TriangleError and it is inheriting from the StandardError class
class TriangleError < StandardError
end
end
