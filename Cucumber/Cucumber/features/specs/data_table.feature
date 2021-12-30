#language: pt

@data_table
Funcionalidade: Trabalhar com datatable

Cenario: Cortar laranja
    Dado que tenha umas laranjas
    | laranja | 10 |
    Quando eu corto 2 laranjas
    Então eu verifico quantas laranjas sobraram inteiras


Cenario: Chupar laranja
    Dado que eu tenha umas laranjas
    | laranja | 
    | 10      |
    Quando eu chupo 2 laranjas
    Então eu verifico quantas laranjas sobraram