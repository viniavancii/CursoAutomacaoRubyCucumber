Quando('clico no botão') do                                                     
   visit '/buscaelementos/botoes'  
   find('#teste').click  
end                                                                             
                                                                                    
Então('verifico se o texto apareceu na tela com sucesso') do   
    #forma que sempre faço                
    #expect(page).to have_content 'Você Clicou no Botão!'

    #buscando textos na página
    #has_text?
    page.has_text?('Você Clicou no Botão!')

    #have_text
    have_text('Você Clicou no Botão!')
end                                                                             