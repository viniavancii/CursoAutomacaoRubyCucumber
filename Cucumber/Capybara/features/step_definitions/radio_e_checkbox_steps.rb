    Quando('eu marco um radiobox e um checkbox') do
        visit '/buscaelementos/radioecheckbox'

        #find e click
        find('label[for="white"]').click

        #check --> usou o id e o 'allow_label_click: true' porque estava desabilitado
        check('purple', allow_label_click: true) 

        #uncheck para desmarcar uma combobox
        uncheck('purple', allow_label_click: true)

        #radiobox
        choose('red', allow_label_click: true)
        sleep 2
    end