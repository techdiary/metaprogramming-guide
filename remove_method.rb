## remove_method: removes the defined method symbol, but if a method with same name is defined for an ancestor of that class, that ancestor class method is not removed:
class Y
  def someMethod
    p "Y's some method"
  end
end

class Z < Y
  def someMethod
    p "Z's some someMethod"
  end
end

p "Defined class 'Y' and  class 'Z < Y'"

p "reopening class Z and removing some someMethod"
class Z
  remove_method(:someMethod)
end

ob = Z.new
ob.someMethod

