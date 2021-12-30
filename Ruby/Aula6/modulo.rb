module ModuloNome
    #serve para agrupar classes, constantes e metodos
    #parecido com classe, so que ele não pode ser instanciado
    #não pode ser herdado

    def metodo
        puts "Eu sou um modulo"
    end
end

class ClassNome
    include ModuloNome #incluir o modulo dentro da classe
end

obj = ClassNome.new
obj.metodo