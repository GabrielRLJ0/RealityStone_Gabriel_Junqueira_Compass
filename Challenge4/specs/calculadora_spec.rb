require 'rspec'
require 'pry'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new
    a = rand(-1000..1000)
    ap = rand(0..1000)
    b = rand(-1000..1000)
    c = rand(-1000..1000)
    it('Deve somar dois inteiros positivos aleatórios') do
        calculadora.soma(a, b)
        expect(calculadora.soma(a, b)).to eq a + b
    end

    it('Deve somar dois inteiros positivos') do
        calculadora.soma(10, 5)
        expect(calculadora.soma(10, 5)).to eq 15
    end

    it('Deve somar dois floats positivos') do
        calculadora.soma(31.58, 51.29)
        expect(calculadora.soma(31.58, 51.29)).to eq 31.58 + 51.29
    end

    it('Deve somar um numero qualquer com 0') do
        expect(calculadora.soma(a, 0)).to eq a
    end

    it('Deve somar um numero com 0') do
        expect(calculadora.soma(33, 0)).to eq 33
    end

    it('Deve somar um numero float com 0') do
        expect(calculadora.soma(33.81, 0)).to eq 33.81
    end

    it('Deve somar numeros negativos aleatórios') do
        expect(calculadora.soma(-b, -a)).to eq -a + -b
    end

    it('Deve somar numeros negativos') do
        expect(calculadora.soma(-30, -25)).to eq -30 + -25
    end
    
    it('Deve subtrair numeros aleatórios') do
        expect(calculadora.subtrai(a, b)).to eq a - b
    end

    it('Deve subtrair numeros') do
        expect(calculadora.subtrai(65, 37)).to eq 65 - 37
    end

    it('Deve subtrair numeros float') do
        expect(calculadora.subtrai(91.39, 19.70)).to eq 91.39 - 19.70
    end
    
    it('Deve multiplicar numeros aleatorios') do
        expect(calculadora.mult(a, b)).to eq a * b
    end

    it('Deve multiplicar numeros inteiros positivos') do
        expect(calculadora.mult(30, 5)).to eq 30 * 5
    end

    it('Deve multiplicar numeros float') do
        expect(calculadora.mult(14.39, 3.33)).to eq 14.39 * 3.33
    end

    it('Deve multiplicar numeros inteiros negativos') do
        expect(calculadora.mult(-5, -25)).to eq -5 * -25
    end

    it('Deve dividir numeros aleatorios') do
        expect(calculadora.div(a, b)).to eq a / b
    end

    it('Deve dividir numeros inteiros') do
        expect(calculadora.div(30, 2)).to eq 30 / 2
    end

    it('Deve dividir numeros float') do
        expect(calculadora.div(43.50, 3.33)).to eq 43.50 / 3.33
    end

    it('Deve dividir numeros negativos') do
        expect(calculadora.div(-25, -3)).to eq -25 / -3
    end

    it('Deve dividir numeros aleatorios') do
        expect(calculadora.div(a, b)).to eq a / b
    end

    it('Deve fazer a potenciação de números aleatorios') do
        expect(calculadora.pot(a, b)).to eq a ** b
    end

    it('Deve fazer a potenciação de números inteiros positivos') do
        expect(calculadora.pot(5, 3)).to eq 5 ** 3
    end

    it('Deve fazer a potenciação de números inteiros negativos') do
        expect(calculadora.pot(-35, 2)).to eq 1225
    end

    it('Deve fazer a potenciação de números float') do
        expect(calculadora.pot(5.35, 3.93)).to eq 5.35 ** 3.93
    end

    it('Deve fazer a porcentagem de números aleatorios') do
        expect(calculadora.porcentagem(a, b)).to eq (a * b) / 100.0
    end

    it('Deve fazer a porcentagem de números inteiros positivos') do
        expect(calculadora.porcentagem(530, 30)).to eq (530 * 30) / 100.0
    end

    it('Deve fazer a porcentagem de números inteiros negativos') do
        expect(calculadora.porcentagem(-412, -12)).to eq (-412 * -12) / 100.0
    end

    it('Deve fazer a porcentagem de números float positivos') do
        expect(calculadora.porcentagem(43.5, 13.8)).to eq (43.5 * 13.8) / 100.0
    end

    it('Deve fazer a porcentagem de números float negativos') do
        expect(calculadora.porcentagem(-43.5, -13.8)).to eq (-43.5 * -13.8) / 100.0
    end

    it('Deve fazer a raiz quadrada de um numero aleatório') do
        expect(calculadora.raiz(ap)).to eq Math.sqrt(ap)
    end

    it('Deve fazer a raiz quadrada de um numero') do
        expect(calculadora.raiz(25)).to eq 5
    end

    it('Deve fazer a raiz quadrada de zero') do
        expect(calculadora.raiz(0)).to eq Math.sqrt(0)
    end

    it('Deve fazer a Bhaskara de números aleatórios') do
        resultado_esperado = calculadora.bhaskara(a, b, c)
        expect(calculadora.bhaskara(a, b, c)).to eq resultado_esperado
    end
    
    it('Deve fazer a Bhaskara de números predefinidos') do
        expect(calculadora.bhaskara(2, 5, 2)).to eq 'Raízes: x1 = -0.5, x2 = -2.0'
    end


end