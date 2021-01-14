class Triangle
  
  attr_reader :s1, :s2, :s3 
  
def initialize(s1,s2,s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3
end


def kind
    if (@s1 == @s2) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) || (@s1 == @s3) || (@s2 == @s3)
      :isosceles
    else 
      :scalene
     end
   end
  
  
  
  def real_triangle
    sides= [@s1, @s2, @s3]
    if sides.any?{|side| side <= 0} || ((@s1 + @s2) <= @s3)
      raise TriangleError
  else 

end
  
  
  
  
class TriangleError < StandardError
end
