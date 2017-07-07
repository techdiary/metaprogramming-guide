#Introspection or Reflection
##class()
##instance_methods()
##instance_variables()
class Rubyist
  def what_does_he_do
    @person = 'A Rubyist'
    'Ruby Programming'
  end
end

an_object = Rubyist.new
p "class name: " 
puts an_object.class
p "instance_methods: " 
puts an_object.class.instance_methods(false)
p "Running instance method..."
an_object.what_does_he_do
p "object instance variables are:" 
puts an_object.instance_variables

#respong_to?
obj = Object.new
if obj.respond_to? :program
  obj.program
else
  raise NoMethodError.new('method :program missing')
end

