# frozen_string_literal: true

# ----------- PARTE 1 -----------
def sum(array)
  suma = array.sum
  suma
end

def max_2_sum(array)
  suma_max = 0
  if array.length.zero?
    suma_max = 0
  elsif array.length == 1
    suma_max = array[0]
  else
    sorted_array = array.dup.sort
    dos_max = sorted_array.pop(2)
    suma_max = dos_max.sum
  end
  suma_max
end

def sum_to_n?(array, n)
  if array.sum == n
    true
  else
    false
  end
end

# ----------- PARTE 2 -----------

def hello(name)
  "Hello #{name}"
end

def start_with_consonant?(s)
  s.downcase.match?(/^[b-df-hj-np-tv-z]/)
end

def binary_multiple_de_4?(s)
  if s.match?(/^[01]+$/)
    num_decimal = s.to_i(2)
    if num_decimal % 4 == 0
      bool = true
    else
      bool = false
    end
  else
    bool = false
  end
  bool
end

class BookInStock
  @precio
  @isbn

  def precio
    @precio
  end

  def precio=(precio)
    @precio = precio
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def initialize(isbn, precio)
    #Verifica que el ISBN sea una cadena y no este vacia
    if isbn.is_a?(String) && !isbn.empty?
      @isbn = isbn
    else
      raise ArgumentError, "El isbn no puede estar vacio"
    end
    #Verifica si el precio es float y sea mayor que 0
    if (precio.is_a?(Float) || precio.is_a?(Integer)) && precio > 0
      @precio = precio
    else
      raise ArgumentError, "El precio deber ser flotante y mayor que 0"
    end
  end

  def price_as_string
    if @precio.is_a?(Integer)
      "$#{@precio}.00"
    end
    "$#{format("%.2f", @precio).to_s}"
  end
end