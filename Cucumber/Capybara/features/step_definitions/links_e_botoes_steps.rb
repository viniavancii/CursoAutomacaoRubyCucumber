   Quando('eu clico em botões') do
    visit '/'

    #pode ser click_link_or_button tbm
    click_on('Começar Automação Web') #clica em links ou botoes com esse texto 'Começar Automação Web'
    
    #clicar em botão buscando pela sua classe
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')

    #usando find click
    find('a[onclick="ativaedesativa2()"]').click

    #duplo click
    find('a[onclick="ativaedesativa2()"]').double_click

    #clique com btn direito do mouse
    find('a[onclick="ativaedesativa3()"]').right_click

    #clica em link pelo texto 'Consultoria do Batista'
    visit '/'
    click_link('Consultoria do Batista')
  end