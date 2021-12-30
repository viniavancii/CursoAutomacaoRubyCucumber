    Quando('seleciono o mouse hover') do                                           
        visit '/iteracoes/mousehover'

        #puxei a classe e usei o hover para passar por cima
        find('.activator').hover

        #se eu quisesse usar o hover e clicar
        find('.activator').hover.click
    end                                                                            