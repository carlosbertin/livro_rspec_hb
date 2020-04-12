class Foo
    @@count = 0
    def initialize
      @@count += 1
    end
  
    def Foo.get_count
      @@count
    end
end

# What is @/@@?
# There are 4 types of variables in Ruby: local , global, instance, and class. 
# The @ symbol before a variable tells Ruby that we are working with an instance variable,
# and @@ before a variable tells us we are working with a class variable. We use @ before 
# a variable in instance methods within a class to tell Ruby to access that 
# attribute (instance variable) of the instance. 
# Using @instance_var makes instance_var accessible to all instance methods. 
# Similarly, we use @@ before a variable in class methods to tell Ruby to access 
# that attribute (class variable) of the class. Using @@class_var makes class_var 
# accessible to the entire class. When we use @instance_var or @@class_var, we are
#  accessing that instance or class variable directly.