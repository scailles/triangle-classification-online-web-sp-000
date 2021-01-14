class Triangle
  
  attr_reader :s1, :s2, :s3 
  
def initialize(s1,s2,s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3
end


def kind
  sides= [@s1, @s2, @s3]
  if sides.any?{|side| side <= 0} || ((@s1 + @s2) <= @s3)
    raise TriangleError
    elsif (@s1 + @s2 <= @s3) or (@s1+@s3 <= @s2) or (@s2+@s3 <= @s1)
    raise TriangleError
  else 
    if (@s1 == @s2) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) || (@s1 == @s3) || (@s2 == @s3)
      :isosceles
    else 
      :scalene
     end
   end
  end

end
  
  
  
  
class TriangleError < StandardError
end
