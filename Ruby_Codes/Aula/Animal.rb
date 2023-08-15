class Animal
    def pular
        puts 'Pulo'
    end

    def dormir
        puts 'a mimir'
    end
end

class Cachorro < Animal
    def latir
        puts 'Latiu'
    end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir