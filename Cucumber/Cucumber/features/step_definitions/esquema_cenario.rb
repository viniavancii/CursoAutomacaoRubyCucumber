    Quando('eu multiplico minhas {int} pelo {int}') do |laranja, valor|
        @mult = laranja * valor
    end
    
    Então('eu vejo qual é o {int} da multiplicação') do |resultado|
        expect(@mult).to eq resultado
    end