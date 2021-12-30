    Quando('clico no botão') do                                                  
        @ajax = AjaxPage.new
        @ajax.load
        @ajax.clicar_btn
    end                                                                          
                                                                                
    Então('Verifico se apareceu') do  
        #vai aguardar até aparecer a mensagem(max_wait_time no env.rb controla ele, se for 5seg lá, esperará no máximo 5seg)
        @ajax.wait_for_mensagem   
        #vai verificar o valor do text da mensagem(variavel de simbolo que recebeu o caminho da mensagem)                                        
        expect(@ajax.mensagem.text).to eq 'Você Clicou no Botão!'
    end                                                                          