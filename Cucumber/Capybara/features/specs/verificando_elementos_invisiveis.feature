#language: pt

@verificar_elementos_inv
Funcionalidade: Verificar elementos invisiveis na tela

Cenário: Verificar elemento invisivel com sucesso
    Quando clico em um botão
    Então verifico se o texto desapareceu da tela com sucesso