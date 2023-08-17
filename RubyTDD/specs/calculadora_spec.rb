require 'rspec'
require 'pry'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new
    a = 4
    b = 5
    it('Deve somar dois inteiros positivos') do
        calculadora.soma(a, b)
        expect(calculadora.soma(a, b)).to eq a + b
    end

    it('Deve somar um numero qualquer com 0') do
        expect(calculadora.soma(a, 0)).to eq a
    end

    it('Deve somar numeros negativos') do
        expect(calculadora.soma(-b, -a)).to eq -a + -b
    end
    
    it('Deve subtrair numeros') do
        binding.pry
        expect(calculadora.subtrai(a, b)).to eq a - b
    end
end