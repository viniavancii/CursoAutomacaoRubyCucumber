    Quando('eu executo algum script') do
        visit '/outros/scroll'

        #aqui ele irá executar uma JQuery fazendo o scroll apenas para baixo (1500) e não para o lado (0)
        page.execute_script('window.scrollBy(0,1500)')

            #executando uma ação via script
            @result = page.evaluate_script('4 + 4');
            puts @result
    
    end