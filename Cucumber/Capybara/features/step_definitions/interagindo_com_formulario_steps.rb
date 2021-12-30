  Quando('eu faço cadastro') do
    visit '/users/new'

    #serve para preencher campos de um form
    fill_in(id: 'user_name', with: 'Vinicius')
    
    #preencher com set('')
    find('#user_lastname').set('Avanci')

    #preencher com send_keys('')
    find('#user_email').send_keys('viniciusavanci14@gmail.com')

    fill_in(id: 'user_address', with: 'Rua Marechal Deodoro')
    find('#user_profile').set('Analista de Qualidade')
    find('#user_gender').send_keys('Masculino')
    fill_in(id: 'user_age', with: '21')

    find('input[value="Criar"]').click
  end
  
  Então('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end