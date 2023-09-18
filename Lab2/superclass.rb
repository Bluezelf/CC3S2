# frozen_string_literal: true

class Persona
  def initialize(nombre)
    @nombre = nombre
  end

  def to_s
    super + "Persona llamada #{@nombre}"
  end
end

p = Persona.new("Kapumota")
puts p