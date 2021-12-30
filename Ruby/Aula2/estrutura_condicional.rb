puts 'Digite um número 1 ou 2'
v1 = gets.to_i

#if, elsif, else
if v1 == 1
    puts "Valor igual a 1"
elsif v1 == 2
    puts "Valor igual a 2"
else 
    puts "Valor não é igual a 1"
end

#unless é um if ao contrário, verifica se a condição é falsa
unless v1 == 2 # se essa condiçao for falsa imprime condição falsa
    puts "Condiçao falsa"
else
    puts "Condição verdadeira" # se a condiçao for verdadeira
end

#case
case v1
when 0
    puts "Você digitou 0"
when 1
    puts "Você digitou 1"
else
    puts "opção inválida"
end 
