    Dado('que eu tenha {int} laranjas') do |valor|
        @laranjas = valor
    end
    
    Quando('eu coloco {int} laranjas na bolsa') do |valor2|
        @soma = @laranjas + valor2
    end
    
    Então('eu verifico se o total de laranjas é {int}') do |resul|
        expect(@soma).to eq resul
    end
    
    Quando('eu retiro {int} laranjas da bolsa') do |valor3|
        @sub = @laranjas - valor3
    end
    
    Então('eu verifico se o total de laranja é {int}') do |resul|
        expect(@sub).to eq resul
    end