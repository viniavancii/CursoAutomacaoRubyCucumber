    Quando('mapeio uma tabela') do
        @lista_elementos = MapeandoLista.new
        @lista_elementos.load

        #vai pegar o valor do texto do primeiro elemento da tabela
        puts @lista_elementos.lista[0].text
    
        #vai guardar todos os valores do texto de cada parte da tabela, vai guardar e imprimir tudo no final
        @lista_elementos.lista.each do |listas|
            puts listas.text
        end
    end