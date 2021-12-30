  Quando('interajo com dropdown e select') do                                   
    visit '/buscaelementos/dropdowneselect'

    #dropdpwn
    find('.btn.dropdown-button').click
    find('#dropdown3').click


    #select algum elemento em uma combobox pelo id 
    select 'Chrome', from: 'dropdown' 
    find('option[value="2"]').select_option #selecionou o firefox
   

    #autocomplete, clicar em algo que se autocompleta apos digitar uma parte
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Rio de Jane'
    find('ul', text: 'Rio de Janeiro').click
  end                                                                           
                                                                                
  Quando('interajo com o autocomplete') do                                      
    
  end                                                                           