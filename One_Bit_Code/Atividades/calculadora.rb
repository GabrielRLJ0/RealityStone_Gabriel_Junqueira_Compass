result = ''
op = ''
loop do
    puts result
    puts 'Deseja fazer um cálculo? [s/n]'
    resp = gets.chomp
    break if resp.downcase != 's'
    
    puts 'Digite o primeiro número: '
    num1 = gets.chomp.to_i
    
    loop do
        puts 'Agora digite um operador que seja +, -, x ou / '
        op = gets.chomp
        if op != '+' && op != '-' && op != 'x' && op != '/'
            puts 'Erro! Digite um operador válido'
        else 
            break
        end
    end
    
    puts 'Digite o segundo número para fazer o cálculo: '
    num2 = gets.chomp.to_i
    
    case op
    when '+'
        result = num1 + num2
    when '-'
        result = num1 - num2
    when 'x'
        result = num1 * num2
    when '/'
        result = num1 / num2
    end
end

