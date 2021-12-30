    Quando('eu cadastro o usuário') do                                             
        visit '/users/new'
        fill_in(id: 'user_name', with: 'Vinicius')
        find('#user_lastname').set('Avanci')
        fill_in(id: 'user_email', with: 'viniciusavanci22@gmail.com')
        find('input[type = "submit"]').click
    end                                                                            
                                                                                    
    Então('verifico se o usuário foi cadastrado') do                               
        @texto = find('#notice')
        expect(@texto.text).to eq 'Usuário Criado com sucesso'
    end                                                                            
      
    #sem a mudança do arquivo .env o capybara resetava a sessão, fazendo com que o cenário não passe (a cada cenario)
    #o cenário seguinte, agora, consegue contiar após o térmido do cenário anterior
    Quando('eu edito o usuário') do                                                
        find('.btn.waves-light.blue').click
    end                                                                            
                                                                                    
    Então('verifico se o usuário foi editado') do                                  
        sleep 3
    end                                                                            