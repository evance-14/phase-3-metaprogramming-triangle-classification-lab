class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  private

  def validate_triangle
    sides = [a, b, c].sort
    raise TriangleError if sides[0] <= 0 || sides[0] + sides[1] <= sides[2]
  end

  class TriangleError < StandardError; end
end
