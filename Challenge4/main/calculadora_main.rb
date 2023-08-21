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
  puts "Operadores: 
  \n '+' Somar
  \n '-' Subtrair
  \n 'x' Multiplicação
  \n '/' Divisão
  \n '*' Potenciação
  \n '%' Porcentagem
  \n 'r' Raiz quadrada (numero operador)
  \n 'b' Bhaskara (numero(a) operador numero(b) numero(c))"

  input = gets.chomp.split

  a = input[0]
  op = input[1]
  b = input[2]
  c = input[3]

  begin
    if a == nil
      a = 0
    else
      a = Float(a)
    end
    
    if b == nil
      b = 0
    else
      b = Float(b)
    end

    if c == nil
      c = 0
    else
      c = Float(c)
    end

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
    when '*'
      result = calculadora.pot(a, b)
    when '%'
      result = calculadora.porcentagem(a, b)
    when 'r'
      result = calculadora.raiz(a)
    when 'b'
      result = calculadora.bhaskara(a, b, c)
    else
      puts 'Erro! Operador inválido.'
    end
  rescue ArgumentError
    puts 'Digite números!!!'
  end
end
