#Componente base
class Coffee
  def cost
    2.0
  end
  def description
    "Cafe"
  end
end

#Decorador base
class CoffeeDecorator < Coffee
  attr_reader :coffee

  def initialize(coffee)
    @coffee = coffee
  end
  def cost
    @coffee.cost
  end

  def description
    @coffee.description
  end
end

#Decorador Leche
class MilkDecorator < CoffeeDecorator
  def cost
    super + 0.5
  end

  def description
    super + " con leche"
  end
end

#Decorador Azucar
class SugarDecorator < CoffeeDecorator
  def cost
    super + 0.2
  end

  def description
    super + " con azucar"
  end
end

#Cliente
coffee = Coffee.new
puts "Pedido: #{coffee.description}, Costo: $#{coffee.cost}"

milk_coffee = MilkDecorator.new(coffee)
puts "Pedido: #{milk_coffee.description}, Costo: $#{milk_coffee.cost}"

sugar_milk_coffee = SugarDecorator.new(milk_coffee)
puts "Pedido: #{sugar_milk_coffee.description}, Costo: $#{sugar_milk_coffee.cost}"
















