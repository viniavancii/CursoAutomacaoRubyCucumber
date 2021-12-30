#language: pt

@contexto
Funcionalidade: Trabalhar com contexto

Contexto: 
    Dado que eu tenha 10 laranjas

Cenario: Colocar laranja
    Quando eu coloco 2 laranjas na bolsa
    Então eu verifico se o total de laranjas é 12

Cenario: Retirar laranja
    Quando eu retiro 2 laranjas da bolsa
    Então eu verifico se o total de laranja é 8