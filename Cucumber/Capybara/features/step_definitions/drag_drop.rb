    Dado('que eu estou na tela de drag and drop') do                              
       visit '/iteracoes/draganddrop'
    end                                                                           
                                                                                    
    Quando('eu movo o drag and drop') do                                          
        @primeiro = find('#winston')
        @segundo = find('#dropzone')

        #movando a imagem para o quadrado
        @primeiro.drag_to(@segundo)
        expect(@segundo.style('green')).to eq 'green' => ''
    end                                                                           
