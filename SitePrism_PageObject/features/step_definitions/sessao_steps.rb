    Quando('clico no elemento da sessao') do
        @pagina = Pagina.new
        @pagina.load

        #vai clicar em um elemento da navbar
        @pagina.wait_for_navbar
        @pagina.navbar.youtube.click
    end