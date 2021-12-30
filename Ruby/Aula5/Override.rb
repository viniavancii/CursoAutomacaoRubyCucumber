class ClassMae
    def correr
        puts "A mãe corre" 
    end
end

class ClassFilha < ClassMae
    def correr
        puts "A filha corre" 
    end
end

class2 = ClassFilha.new
class2.correr #sobreescreveu --> Override