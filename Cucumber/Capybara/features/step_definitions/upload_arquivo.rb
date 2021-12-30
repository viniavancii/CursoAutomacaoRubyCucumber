    Quando('eu faço o upload do arquivo') do
        visit '/outros/uploaddearquivos'


        #passando o id do campo que irá receber o arquivo, o caminho do arquivo e fazendo ele ficar visivel
        #attach_file('upload', 'C:/CursoAutomacaoRubyCucumber/Cucumber/Capybara/features/Sucesso_documento_apagado_docs_exportados.png', make_visible: true)
        


        #Aqui ele esta concatenando o caminho atual (da C:// até a pasta do arquivo em si 
        #'/CursoAutomacaoRubyCucumber/Cucumber/Capybara') com em que pasta está o arquivo
        @foto = File.join(Dir.pwd, '/features/Sucesso_documento_apagado_docs_exportados.png')
        attach_file('upload', @foto, make_visible: true)

        sleep 2
    end