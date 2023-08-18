require '../src/calculadora'

result = ''
calculadora = Calculadora.new

loop do
  if result != ''
    puts "Resultado: #{result}"
  end

  result = ''

  puts 'Deseja fazer um cálculo? [s/n]'
  resp = gets.chomp
  break if resp.downcase != 's'

  puts 'Digite a expressão no formato (numero operador numero): '
  input = gets.chomp.split

  a = input[0]
  op = input[1]
  b = input[2]

  begin
    a = Float(a)
    b = Float(b)

    case op
    when '+'
      result = calculadora.soma(a, b)
    when '-'
      result = calculadora.subtrai(a, b)
    when 'x'
      result = calculadora.mult(a, b)
    when '/'
      if b == 0
        puts 'Erro! Você tentou uma divisão por zero!!!'
      else
        result = calculadora.div(a, b)
      end
    else
      puts 'Erro! Operador inválido.'
    end
  rescue ArgumentError
    puts 'Digite números!!!'
  end
end
