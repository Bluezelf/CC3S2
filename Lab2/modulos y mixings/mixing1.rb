# frozen_string_literal: true

module Debug
  def quien_soy?
    "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end

class Fonografo
  include Debug
  attr_reader :name

  def initialize(nombre)
    @name = nombre
  end
  # ...
end

class OchoPistas
  include Debug
  attr_reader :name

  def initialize(nombre)
    @name = nombre
  end
  # ...
end

fonografo = Fonografo.new("West End Blues")
ocho_pistas = OchoPistas.new("Surrealistic Pillow")
puts fonografo.quien_soy?
puts ocho_pistas.quien_soy?