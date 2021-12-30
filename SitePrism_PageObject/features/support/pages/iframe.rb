#primeiro mapeaia os elementos do iframe, depois o iframe em si em outra class
class PaginaIframe < SitePrism::Page

    element :nome, '#first_name'
    element :sobrenome, '#last_name'
end

class PaginaPadrao < SitePrism::Page
    set_url '/mudancadefoco/iframe'
    #criou uma variavel de simbolo, passou a classe que estão os elementos do iframe e mapeou o iframe em si
    iframe :preencher_campo, PaginaIframe, '#id_do_iframe'
end