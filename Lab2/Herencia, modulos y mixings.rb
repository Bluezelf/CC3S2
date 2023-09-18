# frozen_string_literal: true

class Padre
  def say_hello
    puts "Hola a  #{self}"
  end
end
p = Padre.new
p.say_hello

class  Hijo < Padre
end
c = Hijo.new
c.say_hello

puts Hijo.superclass
puts Padre.superclass
puts Object.superclass
puts BasicObject.superclass