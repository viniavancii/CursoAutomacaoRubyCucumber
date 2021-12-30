#language: pt

#use 'bundle exec cucumber' para executar apenas com as gems desse projeto
@primeira_page
Funcionalidade: Acessar a primeira page

Cenário: Acessar a url com sucesso
    Quando eu acesso a url
    Então verifico se estou na página inicial