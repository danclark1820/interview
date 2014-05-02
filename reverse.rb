require 'pry'
def reverse(foo)
  if foo.class == Fixnum || foo.class == Float
    foo = foo.to_s
  end
  array = foo.split('')
  new_string = ''
  while array.length > 0
    new_string << array.pop
  end
  print new_string
end

reverse(123)

