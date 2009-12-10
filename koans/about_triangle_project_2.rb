require 'edgecase'

# You need to write the triangle method in the file 'triangle.rb'
require 'triangle.rb'

class AboutTriangleAssignment2 < EdgeCase::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_zero_len_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
  end

  def test_negative_len_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(3, 4, -5) end
  end

  def test_impossible_len_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(2, 4, 2) end 
  end
end
  
