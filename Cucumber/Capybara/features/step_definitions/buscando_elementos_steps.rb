  Quando('acesso a url de botoes') do                                           
    visit '/buscaelementos/botoes'
  end                                                                           
                                                                                
  Então('eu verifico se encontrei os elementos') do                             
    #all - busca o elemento em toda pagina
    page.all('#teste')

    #busca elemento mapeado
    find('#teste') 
    find_by_id('teste') #busca pelo id
    find_button(class: 'btn waves-light') #busca pela classe

    #busca o primeiro btn com a classe btn
    first('.btn')

    #pelo link
    find_link(href:'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
  end                                                                           