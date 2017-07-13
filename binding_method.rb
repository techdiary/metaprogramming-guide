# 'eval' method may take an optional 'binding' argument which, if provided, causes the evalutaion to be done within a specific scope or 'context'
def getBinding(str)
   binding
end

str = "hello"
puts eval("str + ' Fred'")
puts eval( "str + ' Fred'", getBinding("bye"))
### here 'binding' is a private method of Kernel. The 'getBinding' is able to
### call binding withing the current context and return the current value of 
### 'str'. In second call, the context moves inside the getBinding method and
### the local value of str is now that `str` atrgument of the method

## Context may also be defined by a class.

class MyClass
  @@x=" x"
  def initialize(s)
    @mystr = s
  end
  def getBinding
    return binding()
  end
end

class MyOtherClass
  @@x=" y"
  def initialize(s)
    @mystr = s
  end
  def getBinding
    return binding()
  end
end
#Declaring global values
@mystr = self.inspect
@@x = " some other value"
# Devlaring Myclass and MyotherClass Objects
ob1 = MyClass.new("ob1 string")
ob2 = MyOtherClass.new("ob2 string")
ob3 = MyClass.new("ob3 string")

#Outputs
puts(eval("@mystr << @@x",ob1.getBinding))
puts(eval("@mystr << @@x",ob2.getBinding))
puts(eval("@mystr << @@x",ob3.getBinding))
puts(eval("@mystr << @@x",binding))
