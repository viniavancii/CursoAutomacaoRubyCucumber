class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'

    element :botao, '#teste'
    element :mensagem, '#div1'

    def clicar_btn
        wait_for_botao #vai esperar até que o btn esteja na tela (com base no 'default_max_wait_time' do env.rb)
        botao.click
    end
end