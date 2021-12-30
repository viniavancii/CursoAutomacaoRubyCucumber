class User < SitePrism::Page
    set_url 'users/new'
    
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_user
        nome.set 'Vinicius'
        sobrenome.set 'Avanci'
        email.set 'emailteste123@gmail.com'
        endereco.set 'Rua Teste'
        universidade.set 'Fatec'
        profissao.set 'QA'
        genero.set 'Masculino'
        idade.set '28'

        criar.click
    end
end