# frozen_string_literal: true

require 'ruby_intro'

describe BookInStock do
  #Creamos la instancia de un objeto para verificar el correcto funcionamiento de los get y set
  #Nos permite tener una instancia de la clase BookInStock re100 creada para cada prueba individual
  before(:each) do
    @book = BookInStock.new("978-0321349606", 23.99)
  end

  it "permite establecer y obtener el precio del libro" do
    @book.precio = 29.99
    expect(@book.precio).to eq(29.99)
  end

  it "permite establecer y obtener el precio del ISBN" do
    @book.isbn = "123456789"
    expect(@book.isbn).to eq("123456789")
  end
end

describe BookInStock do
  context "Atributo ISBN" do
    it "Debe ser un String y no vacio" do
      expect { BookInStock.new("", 34.99)}.to raise_error(ArgumentError)
    end

    it "No debe ser nil" do
      expect { BookInStock.new(nil, 34.99)}.to raise_error(ArgumentError)
    end
  end

  context "Atributo precio" do
    it "Debe ser tipo Float" do
      expect { BookInStock.new("dasd", "34.99")}.to raise_error(ArgumentError)
    end

    it "Debe ser menor o igual a 0" do
      expect { BookInStock.new("sadas", 0)}.to raise_error(ArgumentError)
      expect { BookInStock.new("sadas", -98.99)}.to raise_error(ArgumentError)
    end
  end
end

describe BookInStock do
  context "Formateo del precio" do
    it "Concatenacion correcta" do
      @book = BookInStock.new("sadasd", 34.99)
      expect(@book.price_as_string).to eq("$34.99")
    end

    it "Precio con un decimal" do
      @book = BookInStock.new("sadasd", 50.9)
      expect(@book.price_as_string).to eq("$50.90")
    end

    it "Precio sin decimales" do
      @book = BookInStock.new("sadasd", 34)
      expect(@book.price_as_string).to eq("$34.00")
    end
  end

end

