puts 'digite 3 numeros: '
a, b, c = gets.chomp.split.map(&:to_i)

puts "a: #{a * a}, b: #{b * b}, c: #{c * c}"