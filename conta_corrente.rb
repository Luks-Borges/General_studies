#Uma instância de user que executa ações diiferentes, embora tenha o mesmo molde da classe pai
require_relative './user'
require_relative './cliente'
#Exemplo de Herança com a conta comum e a conta corrente
class User_corrente < User
    attr_accessor :limite

    def initialize(nome, sobrenome, saldo, limite)
        super(nome, sobrenome, saldo) #O super significa que queremos que o initialize de User seja usado
        @limite = limite
    end

    def sacar(valor)
        puts ((saldo + limite) >= valor)? self.saldo -= valor : "Operação não executada"
    end
end  #user_corrente recebe todos os métodos que estão presentes na outra classe, seus métodos etc.., ainda assim precisamos definir os atributos que queremos modificar
