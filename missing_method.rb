def method_missing(methodName, *args)
  self.class.send(:define_method, methodName, lambda{|*args| puts(args.inspect)})
end

p self.class.methods

def remove_the_method
  self.class.remove_method(:xxx)
end

remove_the_method
