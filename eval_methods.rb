# eval Magic
## eval provides a simple way of evaluation a Ruby expression in a string
input = ""
until input == "q"
  p "Enter q to QUIT"
  input = gets().chomp()
  if input !="q" then eval(input) #def x(astr);puts(astr.upcase);end... x("helloworld")
  end
end

#Special type of evals

## instance_eval: can be called from a specific object ans it provides access
##                to the instance variable of that object.
class Myclass
  def initialize
    @aVar = "Hello World"
  end
end

p "creating object :ob of class Myclass"
ob = Myclass.new
p ob.instance_variables
p ob.instance_eval {@aVar}
p ob.instance_eval(ob.instance_variables[0].to_s)

## :eval method can not be called from and object this way as it's a PRIVATE method of Object. :instance_eval is public

### Strictly speaking, eval is a method of the Kernel module which is
### mixed into the Object class.In fact, it is the Kernel module which
### provides most of the functions available as methods of Object.
      ### Changing the visibility of evalby adding to Object Class
        ## class Object
        ##    public :eval         or public :eval
        ## end

##--module_eval and class_eval--
#### this methods operate on modules and classes rather than on object
module X
end

class Y
  @@x = 10
  include X
end

X::module_eval{ define_method(:xyz){ puts("hello") }}
Y::class_eval{ define_method(:abc){ puts "hello,hello" }}

ob = Y.new
ob.xyz
ob.abc


## Adding variables and methods
#:class_variable_set
#:class_variable_get
class Z
 
  def self.addvar(aSymbol, aValue)
   class_variable_set(aSymbol, aValue)
  end

  def self.getvar(aSymbol)
   return class_variable_get(aSymbol)
  end

end

Z.addvar( :@@newvar, 2000)
puts ( Z.getvar(:@@newvar))
