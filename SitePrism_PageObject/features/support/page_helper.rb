#concatenando o diretorio com todos os arquivos da pasta 'pages' e adicionando todos eles a variavel 'file'
#require 'ajax.rb'
Dir[File.join(File.dirname(__FILE__), '../pages/*')].each {|file| require file}

module PageObjects

    def home
        #instanciando a classe para a variavel home, caso ela não tenha sido instanciada anteriormente
        @home ||= MapeandoElementos.new
    end

end