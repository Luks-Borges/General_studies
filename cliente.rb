#Atribuíndo um cliente para várias conta diferentes

class Cliente
    attr_accessor :nome, :sobrenome

    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end
end