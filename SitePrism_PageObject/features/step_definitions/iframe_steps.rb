    Quando('preencho os campos') do
        @pagina_iframe = PaginaPadrao.new
        @pagina_iframe.load

        #parecido com capybara
        @pagina_iframe.preencher_campo do |iframe|
            iframe.nome.set 'Vinicius'
            iframe.sobrenome.set 'Avanci'
        end
    end