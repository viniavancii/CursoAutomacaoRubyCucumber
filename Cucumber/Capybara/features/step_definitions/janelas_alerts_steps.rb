    Quando('eu entro na janela e verifico a mensagem') do
        visit '/mudancadefoco/janela'


    #primeira opção
        janela = window_opened_by do #a variavel janela está recebendo uma janela que será aberta por um link
            click_link 'Clique aqui'
        end

        within_window janela do #mudança de foco para a janela

            #verificando se a url condiz com a janela aberta
            expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

            #procurando o texto na tela
            @mensagem = find('.red-text.text-darken-1.center') 
            #verificando se o texto da class é igual
            expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

            janela.close #fecha a janela atual
        end



    #segunda opçao
        windows.last #muda para a ultima aba

            click_link 'Clique aqui'

            switch_to_window windows.last #mudando para a ultima aba aberta

            expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
            @mensagem = find('.red-text.text-darken-1.center') 
            expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
            windows.last.close

    end


    Quando('eu entro no alert e verifico faço a ação') do
        visit '/mudancadefoco/alert'

        #btn confirmar - OK
        click_button 'Clique para JS Alert'

        page.accept_alert #aceita quando abre um alerta (btn ok do alert)

        #aqui ele verificará se o alerta foi clicado com sucesso através da mensagem que é exibida quando clicado
        @mensagem2 = find('#result')
        expect(@mensagem2.text).to eq 'Você clicou no alerta com sucesso!!'

        sleep 2


        #btn confirmar - cancelar
        click_button 'Clique para JS Confirm'

        page.dismiss_confirm
        @mensagem2 = find('#result')
        expect(@mensagem2.text).to eq 'Você clicou: Cancel'


        sleep 2

        #prompt
        click_button 'Clique para JS Prompt'

        #preenche o campo do prompt com 'Vinicius Avanci', clicando em Ok
        @prompt = 'Vinicius Avanci'
        page.accept_prompt(with: @prompt)


        @mensagem2 = find('#result')
        expect(@mensagem2.text).to eq 'Você digitou: Vinicius Avanci'        

        #page.dismiss_prompt --> Cancela o prompt
    end