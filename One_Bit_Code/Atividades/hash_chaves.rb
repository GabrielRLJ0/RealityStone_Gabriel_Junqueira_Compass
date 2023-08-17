puts 'digite tres estados e suas capitais da seguinta forma: estado capital estado... '
data = gets.chomp.split

hash = {}

data.each_slice(2) do |estado, capital|
    hash[estado] = capital
end

puts "Coleção de estados e capitais: #{hash}"