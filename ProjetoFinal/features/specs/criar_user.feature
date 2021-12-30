#language: pt

Funcionalidade: Criar Usuário
    Eu como Usuário
    Quero me cadastrar com sucesso
    
#use o bundle exec cucumber para executar
Cenario: Cadastrar com sucesso
    Quando eu cadastrar meu Usuário
    Então eu verifico se o usuario foi cadastrado