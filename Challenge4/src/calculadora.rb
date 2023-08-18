class Calculadora
    def soma(a, b)
        a + b
    end

    def subtrai(a, b)
        a - b
    end

    def mult(a, b)
        a * b
    end

    def div(a, b)
        if b == 0
            raise "Divisão por 0"
        end
        a / b
    end


end
