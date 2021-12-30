    Quando('eu uso o teclado do computador') do
        visit '/users/new'

        #usando o teclado
        find('#user_name').send_keys(:page_down)
        find('input[value="Criar"]').send_keys(:enter)
        page.send_keys(:f5)
        sleep 10
    end