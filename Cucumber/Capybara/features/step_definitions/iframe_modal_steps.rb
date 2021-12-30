    Quando('entro no iframe e preencho os campos') do                              
        visit '/mudancadefoco/iframe'
        
        #mudando o foco para o iframe
        within_frame('id_do_iframe') do
            find('#first_name').set('Vinicius')
            find('#last_name').set('Avanci')
        end
    end                                                                            
                                                                                    
    Quando('entro no modal e verifico o texto') do                                 
        visit '/mudancadefoco/modal'
        find('a[class="waves-light btn modal-trigger"]').click

        #mudando o foco para o modal
        #com within apenas é necessário adicionar o '#' se for id ou o '.' se for classe
        within('#modal1') do
            page.has_text?('Modal Teste')
        end
    end                                                                            
                                                                                    
    Quando('fecho o modal') do                                                     
       find('a[class="modal-close waves-green btn-flat"]').click
    end                                                                            