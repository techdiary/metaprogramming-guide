## undef_method : In contrast to remove method, prevents the specified class form responding to a method call even if a method with same name is defined in one of its ancestors
class Y
  def somemethod
    p "Y's somemethod"
  end
end

class Z<Y
  def somemethod
    p "Z's somemethod"
  end
end

zob = Z.new
zob.somemethod

class Z
  undef_method(:somemethod)
end

zob.somemethod

