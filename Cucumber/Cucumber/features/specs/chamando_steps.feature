#language: pt

@chamando_steps
Funcionalidade: Trabalhando com chamando outros passos

Cenario: Amasso laranjas
    Dado que eu tenha 10 laranjas no estoque
    Quando eu amasso 2 laranjas
    Então eu verifico quantas laranjas sobraram no estoque

Cenario: Revendo laranjas
    Quando eu revendo 3 laranjas
    Então eu verifico quantas laranjas eu fiquei