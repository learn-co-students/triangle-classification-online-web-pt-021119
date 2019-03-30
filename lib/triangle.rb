class Triangle
attr_accessor :a, :b, :c

def initialize(a,b,c)
@sides = [a,b,c].sort
@a = a
@b = b
@c = c
end

def kind

if @sides.any? {|x| x <=0 || x <= 0.0}
   raise TriangleError
end

if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
   raise TriangleError
end


case @sides.uniq.size
    when 1
  	:equilateral
    when 2
  	:isosceles
    else
  	:scalene
    end
end

class TriangleError < StandardError
end

end

