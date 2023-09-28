class AnimalFactory
  def self.create_animal(tipo)
    case tipo
    when "Perro"
      return Perro.new
    when "Gato"
      return Gato.new
    when "Pajaro"
      return Pajaro.new
    else
      raise ArgumentError, "Tipo de animal desconocido: #{tipo}"
    end
  end
end

class Animal
  def tipo
    raise NotImplementedError, "Método 'tipo' no implementado en la clase base Animal"
  end
end

class Perro < Animal
  def tipo
    "Perro"
  end
end

class Gato < Animal
  def tipo
    "Gato"
  end
end

class Pajaro < Animal
  def tipo
    "Pajaro"
  end
end

animal = AnimalFactory.create_animal("Perro")
puts animal.tipo