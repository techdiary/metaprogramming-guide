#CREATING CLASS AT RUN-TIME
puts "Give a class name"
className = gets().strip().capitalize
Object.const_set(className, Class.new)
p "I'll give it a method 'myname'"
className = Object.const_get(className)
className::module_eval{ define_method(:myname){
  puts "The name of class is #{self.class}"}
}
x = className.new
x.myname


