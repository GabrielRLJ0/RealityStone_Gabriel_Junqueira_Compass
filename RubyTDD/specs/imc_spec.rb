require 'rspec'
require_relative '../src/imc'

describe('Calculo IMC') do
    it('Deve calcular com peso e altura corretos') do
        peso = 60
        altura = 1.70
        expect(imc(peso, altura)).to eq 20.8
    end

    it('Nao deve calcular o IMC para altura = 0') do
        peso = 60
        altura = 0
        expect(imc(peso, altura)).to include 'Nao e possivel calcular o IMC para altura = 0'
    end
end