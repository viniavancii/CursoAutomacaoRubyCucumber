class MapeandoElementos < SitePrism::Page
    set_url '/users/new'

    #mapeando os elementos (criou uma variavel simbolo que recebe o css selector)
    element :nome, '#user_name' #igual ao find do capybara


    def preencher #metodo para preencher
        nome.set 'Vinicius'
    end
end