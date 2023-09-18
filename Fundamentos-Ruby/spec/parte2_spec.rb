# frozen_string_literal: true

require 'ruby_intro'

describe "hello" do
  context "Concatenar" do
    it "Concatena Hello con el parametro name que se le da" do
      cadena_esperada = hello("Jose")
      expect(cadena_esperada).to eq("Hello Jose")
    end
  end
end

describe "start_with_consonant?" do
  context "Verifica si comienza con consonante" do
    it "El string comienza con consonante mayuscula, debe de dar true" do
      bool_esperado = start_with_consonant?("Hola")
      expect(bool_esperado).to eq(true)
    end
  end
end

describe "start_with_consonant?" do
  context "Verifica si comienza con consonante" do
    it "El string comienza con consonante minuscula, debe de dar true" do
      bool_esperado = start_with_consonant?("cabello")
      expect(bool_esperado).to eq(true)
    end
  end
end

describe "start_with_consonant?" do
  context "Verifica si comienza con consonante" do
    it "El string comienza con vocal mayuscula, debe de dar false" do
      bool_esperado = start_with_consonant?("Ola")
      expect(bool_esperado).to eq(false)
    end
  end
end

describe "start_with_consonant?" do
  context "Verifica si comienza con consonante" do
    it "El string comienza con vocal minuscula, debe de dar false" do
      bool_esperado = start_with_consonant?("avioneta")
      expect(bool_esperado).to eq(false)
    end
  end
end

describe "binary_multiple_de_4?" do
  context "Verifica si la cadena dada es multiplo de 4" do
    it "Se le da la cadena 1000 que si es multiplo de 4, debe dar true " do
      bool_esperado = binary_multiple_de_4?("1000")
      expect(bool_esperado).to eq(true)
    end
  end
end

describe "binary_multiple_de_4?" do
  context "Verifica si la cadena dada es multiplo de 4" do
    it "Se le da la cadena 1001 que NO es multiplo de 4, debe dar false " do
      bool_esperado = binary_multiple_de_4?("1000")
      expect(bool_esperado).to eq(true)
    end
  end
end