Linguagem orientada a objetos
Tipagem dinâmica e forte
Interpretada

Tipos de dados:

Symbol [Semelhante a String, mas é um objeto imutável e ocupa o mesmo espaço na memória]
Exemplo:
irb(main):023:0> ob2_symbol
=> :ruby_symbol
irb(main):024:0> ob2_symbol.object_id
=> 2421148
irb(main):025:0> ob_symbol.object_id
=> 2421148



Hash [Representa uma coleção de dados organizados]
exemplo: ob_hash = {course: 'ruby', language: 'pt-br', locale: 'macaco.com'}


Comandos:

puts " " [Exibe mensagem ou calculo descrito no terminal]

unless = if not

Métodos:
    Exemplo:
        def hello name
            puts "Ola #{name}"
        end

        hello "Leonardo"
        hello "Gabriel"

Gems:
    Gem é um pacote que oferece funcionalidades a fim de resolver uma necessidade especifica de um programa Ruby.
    Basicamente uma biblioteca.

