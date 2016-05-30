# include mixes in methods into a class as instance methods. This means that an object has to be created before they can be used.

# extend mixes in method as class methods. This means they can be called directly from the class. No need for an object.

module Example
  def mod_function
    puts "I am a function in the mod!"
  end
end

class IncludeClass
  include Example
end

class ExtendClass
  extend Example
end

class EmptyClass
end

# Calling a method on the class

# IncludeClass.mod_function # Return no method error
ExtendClass.mod_function # Works fine

# Call a method on an object of the class
IncludeClass.new.mod_function
# ExtendClass.new.mod_function #Returns a no method error

# Extend can be used to add methods to an existing object as well. 

e = EmptyClass
e.extend(Example)
e.mod_function
