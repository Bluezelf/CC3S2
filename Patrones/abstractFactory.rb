#Fabrica Abstracta
class FurnitureFactory
  def create_chair
    raise NotImplementedError, "Las subclases deben implementar el metodo create_chair"
  end

  def create_sofa
    raise NotImplementedError, "La subclases deben implementar el metodo create_sofa"
  end
end

#Fabrica Concreta para Modelos Modernos
class ModernFurnitureFactory < FurnitureFactory
  def create_chair
    ModernChair.new
  end

  def create_sofa
    ModernSofa.new
  end
end

#Fabrica Concreta para Modelos Victorianos
class VictorianFurnitureFactory < FurnitureFactory
  def create_chair
    VictorianChair.new
  end

  def create_sofa
    VictorianSofa.new
  end
end

#Producto Abstracto
class Chair
  def description
    raise NotImplementedError, "Subclase no ha implementado la descripcion"
  end
end
class ModernChair < Chair
  def description
    "Silla Moderna"
  end
end
class VictorianChair < Chair
  def description
    "Silla Victoriana"
  end
end

class Sofa
  def description
    raise NotImplementedError, "Subclase no ha implementado la descripcion"
  end
end
class ModernSofa < Sofa
  def description
    "Sofa Moderno"
  end
end
class VictorianSofa < Sofa
  def description
    "Sofa Victoriano"
  end
end

def create_furniture(factory)
  chair = factory.create_chair
  sofa = factory.create_sofa
  puts "Se ha creado una #{chair.description} y un #{sofa.description}."
end

#Usando la Fabrica MODERNA de Muebles
modern_factory = ModernFurnitureFactory.new
create_furniture(modern_factory)

#Usando la Fabrica VICTORIANA de muebles
victorian_factory = VictorianFurnitureFactory.new
create_furniture(victorian_factory)