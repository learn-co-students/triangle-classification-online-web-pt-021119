class Triangle
  attr_accessor :x,:y,:z
  def initialize(x,y,z)
    @x=x
    @y=y
    @z=z

  end

  def kind
    if @x==@y==@z
      :equilateral
    elsif @x==@y || @z==@y ||@x==@z
      :isosceles
    else
      :scalene
    end
  end
end
