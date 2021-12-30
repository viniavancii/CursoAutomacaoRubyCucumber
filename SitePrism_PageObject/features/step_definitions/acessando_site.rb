    Quando('eu acesso a url') do
        @home = PaginaInicial.new #instancia de classe page object
        @home.load #carrega a url definida em 'pagina_inicial.rb'
    end
    
    Então('verifico se estou na página inicial') do
        #verifica se a url atual é a correta
        expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    end