class Triangle
  
def initialize(s1,s2,s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3
end


def kind()
  if (@s1 <=0) || (@s2 <=0) || (@s3 <= 0)
    raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
  else 
    if (@s1 == @s2) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) or (@s1 == @s3)
  end
end
end

end
  
  
class TriangleError < StandardError

  
end
