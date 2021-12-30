#language: pt

@e2e
Funcionalidade: e2e

Cenário: Criar user
    Quando eu cadastro o usuário
    Então verifico se o usuário foi cadastrado

Cenario: Editar user
    Quando eu edito o usuário
    Então verifico se o usuário foi editado