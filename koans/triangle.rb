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
# def triangle(a, b, c)
#   # WRITE THIS CODE
# end
#
# # Error class used in part 2.  No need to change this code.
# class TriangleError < StandardError
# end

class TriangleError < StandardError
end

def triangle(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "Sides of a triangle must have positive length."
  elsif a + b <= c || a + c <= b || b + c <= a
    raise TriangleError, "The sum of the lengths of any two sides of a triangle must exceed the length of the third side."
  elsif a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end