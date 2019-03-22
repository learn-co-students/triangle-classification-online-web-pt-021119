class Triangle
  attr_accessor :x,:y,:z
  def initialize(x,y,z)
    @x=x
    @y=y
    @z=z

  end

  def kind
    valid?
    if @x==@y && @y==@z
      :equilateral
    elsif @x==@y || @z==@y || @x==@z
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    raise TriangleError if @x+@y<=@z||@x+@z<=@y||@z+@y<=@x||@x<=0||@y<=0||@z<=0
    true
  end

  class TriangleError < StandardError
    def message
      puts "Your triangle sucks!"
    end
  end

end
