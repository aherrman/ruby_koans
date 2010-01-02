# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  unless triangle_valid?(a, b, c)
    raise TriangleError, 'invalid triangle sizes'
  end

  if a == b && a == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

def triangle_valid?(a, b, c)
  sa, sb, sc = [a, b, c].sort
  return sa + sb > sc
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
