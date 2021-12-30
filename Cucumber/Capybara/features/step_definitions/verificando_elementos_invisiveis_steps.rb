    Quando('clico em um botão') do                                                
        visit '/buscaelementos/botoes'  
        find('#teste').click  
    end                                                                           
                                                                                    
    Então('verifico se o texto desapareceu da tela com sucesso') do               
        #buscando textos na página
        #has_text?
        page.has_text?('Você Clicou no Botão!')

        #have_text
        have_text('Você Clicou no Botão!')

        #cliquei novamente para desabilitar a mensagem
        find('#teste').click 

        #has_no_text? --> verificar se sumiu da tela a mensagem
        has_no_text?('Você Clicou no Botão!')
    end                                                                           