@variavel = 'Bruno'

#juntando (interpolando/concatenando) uma variavel do tipo string a um puts
puts "Olá, #@variavel!!" 
puts "Olá, " + @variavel
puts "Olá, " << @variavel


#concatenando variaveis do tipo string com variaveis do tipo inteiro
@variavel_int = 1 + 1
@variavel_string = 'O total é: '
puts @variavel_string + @variavel_int.to_s #convertendo int para string
puts "#{@variavel_string}#{@variavel_int}" #concatenando variaveis de uma forma diferente
puts "#{@variavel_string}" + "#{@variavel_int}" #concatenando variaveis de uma forma diferente