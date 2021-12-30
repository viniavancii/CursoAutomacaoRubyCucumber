  Quando('acesso a url') do
    visit '/treinamento/home' #isso porque já tenho a url padrão no env.rb
  end
  
  Então('eu verifico se estou na página correta') do
    #verificando se url é exatamente a mesma
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
  end