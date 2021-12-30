class Sessao < SitePrism::Section 
    element :youtube, 'body > div.navbar-fixed > nav > div > ul > li:nth-child(4) > a'
    element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'
    element :consultoria, 'a[href="https://consultoriabatista.herokuapp.com/"]'
    element :httparty, 'a[href="https://www.udemy.com/testes-automatizados-de-api-com-httparty-rspec/"]'
    element :capybara, 'a[href="https://www.udemy.com/automacao-de-testes-com-capybara-cucumber-e-ruby/"]'
end

class Pagina < SitePrism::Page
    set_url '/buscaelementos/radioecheckbox'
    #criou uma sessao chamada 'navbar', chamou a classe que possuem os elementos da navbar (acima) e passou onde estão estes elementos
    section :navbar, Sessao, '.nav-wrapper'
end