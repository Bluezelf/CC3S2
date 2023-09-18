# frozen_string_literal: true

class Persona
  include Comparable
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def to_s
    "#{@name}"
  end
  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Persona.new("M")
p2 = Persona.new("G")
p3 = Persona.new("L")

if p1 > p2
  puts "#{p1.name} > nombre #{p2.name}"
end

puts "Lista ordenada"
puts [p1,p2,p3].sort