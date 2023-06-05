class Triangle
  attr_accessor :h_length, :v_length, :d_length

  def initialize(h_length, v_length, d_length)
    
    @h_length = h_length
    @v_length = v_length
    @d_length = d_length
  end
  def kind 
    if h_length + v_length <= d_length || h_length + d_length <= v_length || v_length + d_length <= h_length
      raise TriangleError 
    elsif h_length == 0 || v_length == 0 || d_length == 0 
        raise TriangleError
    elsif h_length < 0 || v_length < 0 || d_length < 0
        raise TriangleError
    elsif @v_length == @h_length && @v_length == @d_length
      :equilateral 
    elsif (@v_length == @h_length && @v_length != @d_length) || (@v_length != @h_length && @v_length == @d_length) || (@v_length != @h_length && @h_length == @d_length)
      :isosceles
    else 
      :scalene 
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message 
      puts "Each side must be larger than 0."
      puts "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality"
    end
  end
end
