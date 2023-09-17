# frozen_string_literal: true

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

# puts sum_to_n?([1,2,3], 6)
# puts sum_to_n?([1,2,3], 9)
