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

