#Classes são constantes, por tanto sempre utilize com letra maiúscula
#new é um método que o ruby já interpreta sem precisar definir isso dentro da nossa classe
#Abstraindo um objeto da vida real para o ruby
#O método initialize já tem como pré-definido iniciar junto ao método new

# Todos os atributos de um objeto são privados (não poderão ser acessados fora de uma classe), para isso utilizamos attr_acessor para ser acessado e attr_reader somente 
# para leitura
require_relative './cliente'

class User
    attr_reader :user_insert_date, :user_id
    #Método para definir atributos de leitura
    attr_accessor :user_name, :posts_qnt, :conta_destino, :saldo
    #Método para definir atributos de leitura e escrita

    def initialize(nome, sobrenome, saldo)
        #Definimos suas variáveis para imprimir os valores
        @user_name = Cliente.new(nome, sobrenome)
        @user_insert_date = Time.now.strftime("%d/%m/%y %H:%M")
        @user_id = 0
        @posts_qnt = 0
        @saldo = saldo
    end

    def  postagem_qnt(account_posts)
        posts = self.posts_qnt
            
        puts (posts <= 3)? posts += account_posts : "erro: Você ultrapassou a quantidade de posts do dia"
        
        ensure
            self.posts_qnt = posts
    end

    def sacar(valor)
        puts (saldo >= valor)? self.saldo -= valor : "Operação não executada"
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor) #identificar qual é o outro objeto da classe, retirar o valor deste objeto x1, por fim, transferir somando este valor com o saldo da conta x2
        sacar(valor)
        conta_destino.depositar(valor)
    end
end

#Orientação a objetos é justamente este fliuxo de troca de informações entre os objetos