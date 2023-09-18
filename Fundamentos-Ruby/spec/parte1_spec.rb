# frozen_string_literal: true
require 'ruby_intro'

describe "sum" do
  context "Metodo que suma arrays" do
    it "debe sumar correctamente" do
      resultado_esperado = sum([])
      expect(resultado_esperado).to eq(0)
    end
  end
end

describe "max_2_sum" do
  context "Metodo que suma los 2 elementos mas grandes" do
    it "debe sumar correctamente" do
      resultado_esperado = max_2_sum([4, 300, 5, 10, 1])
      expect(resultado_esperado).to eq(310)
    end
  end
end

describe "max_2_sum" do
  context "Metodo que suma los 2 elementos mas grandes" do
    it "debe dar 0 si el arreglo es vacio" do
      resultado_esperado = max_2_sum([])
      expect(resultado_esperado).to eq(0)
    end
  end
end

describe "max_2_sum" do
  context "Metodo que suma los 2 elementos mas grandes" do
    it "debe dar el unico elemento, si solo tiene 1 elemento" do
      resultado_esperado = max_2_sum([4])
      expect(resultado_esperado).to eq(4)
    end
  end
end

describe "max_2_sum" do
  context "Metodo que suma los 2 elementos mas grandes" do
    it "debe dar la suma correcta si es que los 2 elementos mas grandes son iguales" do
      resultado_esperado = max_2_sum([4, 300, 300, 10, 1])
      expect(resultado_esperado).to eq(600)
    end
  end
end

describe "sum_to_n?" do
  context "Verifica si la suma del arreglo coincide con el 2do parametro n" do
    it "Debe dar true si es que la suma de elementos del array es igual a n (2do parametro)" do
      resultado_esperado = sum_to_n?([1,2,3], 6)
      expect(resultado_esperado).to eq(true)
    end
  end
end

describe "sum_to_n?" do
  context "Verifica si la suma del arreglo coincide con el 2do parametro n" do
    it "Debe dar false si es que la suma de elementos del array es diferente a n (2do parametro)" do
      resultado_esperado = sum_to_n?([1,2,3], 9)
      expect(resultado_esperado).to eq(false)
    end
  end
end
