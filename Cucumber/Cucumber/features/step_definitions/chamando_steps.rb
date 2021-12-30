    Dado('que eu tenha {int} laranjas no estoque') do |valor1|
        @laranjas = valor1
    end
    
    Quando('eu amasso {int} laranjas') do |valor2|
        @total = @laranjas - valor2
    end
    
    Então('eu verifico quantas laranjas sobraram no estoque') do
        expect(@total).to eq 8
    end
    
    Quando('eu revendo {int} laranjas') do |valor3|
        steps %{
            Dado que eu tenha 10 laranjas no estoque
        }
        @total = @laranjas - valor3
    end
    
    Então('eu verifico quantas laranjas eu fiquei') do
        expect(@total).to eq 7
    end