numbers = { A: 10, B: 32, C: 20, D: 25, E: 15 }

maior_chave = nil
maior_valor = -Float::INFINITY  # Inicializar com um valor muito baixo

numbers.each do |chave, valor|
  if valor > maior_valor
    maior_chave = chave
    maior_valor = valor
  end
end

puts "Maior valor: #{maior_valor} está associado à chave: #{maior_chave}"
