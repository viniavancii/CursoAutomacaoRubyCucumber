
v1 = 1
v2 = 2
v3 = 3
v4 = 4

if (v1<v2) && (v3<v4) #as duas condiçoes tem que ser verdadeiras
    puts "Condição atendida pelos dois casos"
else
    puts "Condição falsa"
end


if (v1<v2) || (v3>v4) #apenas uma condição ou a outra tem que ser verdadeira
    puts "Condição atendida por um dos casos"
else
    puts "Condição falsa"
end


if !(v3 < v4) #estou negando a condiçao, ou seja, v3 não é menor que v4 na minha condição, mas v3 é menor que v4
    puts "Negação atendida"
else
    puts "Negação não atendida"
end