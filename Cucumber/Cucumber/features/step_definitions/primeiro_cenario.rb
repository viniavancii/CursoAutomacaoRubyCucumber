    Quando('eu somo {int} + {int}') do |valor1, valor2|
        @soma = valor1 + valor2
    end
    
    Então('o resultado deverá ser {int}') do |resultado|
        expect(@soma).to eq resultado #verifica se o resultado encontrado é igual a variavel "resultado" que é 4
        puts @soma
        puts resultado
    end