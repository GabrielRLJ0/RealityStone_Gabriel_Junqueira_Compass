puts "Escreva um número base e seu expoente: "
num, expo = gets.chomp.split.map(&:to_i)

def potencia(num, expo)
    "O resultado de #{num} elevado a #{expo} é: #{num ** expo}"
end

puts potencia(num, expo)