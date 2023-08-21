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

    def pot(a, b)
        a ** b
    end

    def raiz(a)
        Math.sqrt(a)
      end

    def porcentagem(a, b)
        (a * b) / 100.0
    end

    def bhaskara(a, b, c)
        delta = b ** 2 - 4 * a * c
    
        if delta < 0
          return "Não há raízes reais"
        elsif delta == 0
          x = -b / (2 * a)
          return "Raiz única: #{x}"
        else
          x1 = (-b + Math.sqrt(delta)) / (2 * a)
          x2 = (-b - Math.sqrt(delta)) / (2 * a)
          return "Raízes: x1 = #{x1}, x2 = #{x2}"
        end
      end

end
