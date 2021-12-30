class ClassName #nome da classe é maiuscula

    #constante accessor
    #é o mesmo que getter e setter do java, ele faz os dois (ler e escrever)
    attr_accessor :nome

    #só permite ler
    attr_reader :nomeone

    #só permite escrever
    attr_writer :nomedois


    #metodo = nome minusculo e com _ se for composto
    def method
        #corpo metodo
        puts "Corpo do método"
    end

    def method_composto
        #corpo metodo
        puts "Corpo do método composto"
    end
end


#====================================================================================
#Heranca, ou seja, tudo que for da classe a direita será usado na classe da esquerda
class Heranca < ClassName 

end
#====================================================================================


#====================================================================================
objeto = ClassName.new #instancia de classe

objeto.nome = "Vinicius" #passei um valor para o nome do attr_acessor
puts objeto.nome #imprimi o nome

puts objeto.method, objeto.method_composto #imprimi o puts dos métodos
#====================================================================================


#====================================================================================
objeto_heranca = Heranca.new #instancia de classe
objeto_heranca.method_composto
