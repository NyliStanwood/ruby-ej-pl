require 'erb' #clase de ruby que ya viene instalada

=begin
Embedded Ruby. When you define any file as ".html.erb" that means it's an HTML file with ruby code embedded in it and it is similar to ".rhtml" extension of rails file.
=end

class MyClass_
  def initialize(arg1, arg2)
    @arg1 = arg1;  @arg2 = arg2
  end
end

def def_class(superklass=Object, methodname='result')
  cls = Class.new(superklass)
  def_method(cls, methodname, @filename || '(ERB)')
  cls
end

filename = 'index.html.erb'  # @arg1 and @arg2 are used in example.rhtml
erb = ERB.new(File.read(filename))
erb.filename = filename
puts filename

puts erb
MyClass = erb.def_class(MyClass_, 'render()')

print MyClass.new('foo', 123).render()

puts filename

puts erb
