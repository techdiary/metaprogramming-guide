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
### the local value of str is not that `str` atrgument of the method



