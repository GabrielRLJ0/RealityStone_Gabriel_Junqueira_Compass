def imc(peso, altura)
    if altura == 0
        return 'Nao e possivel calcular o IMC para altura = 0'
    end
    resultado = peso / (altura * altura)
    resultado.round(1)
end