class ClassMae
    def correr
        puts "A mãe corre..." 
    end
end

class ClassFilha < ClassMae
    def correr
        puts super #com o super, invoca o metodo da classe mãe e adiciona os metodos presentes na class filha
        puts "Cansei..." 
    end
end


class2 = ClassFilha.new
class2.correr 