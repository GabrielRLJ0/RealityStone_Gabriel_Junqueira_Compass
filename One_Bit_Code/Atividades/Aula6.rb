class Esportista
    def competir
        puts 'Participando de uma competição'
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr
        puts 'Percorrendo o círcuito'
    end
end

JogadorDeFutebol = JogadorDeFutebol.new
Maratonista = Maratonista.new

JogadorDeFutebol.correr
JogadorDeFutebol.competir
Maratonista.correr
Maratonista.competir