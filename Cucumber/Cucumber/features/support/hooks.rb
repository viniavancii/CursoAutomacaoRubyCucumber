#no projeto todo sem tags
Before do
    puts 'Estou sendo executado antes de cada cenário'
    @soma = 5 + 5
end

After do
    puts 'Estou sendo executado depois de cada cenário'
end


#usando tags para cenários especificos
Before '@comeco' do
    puts 'Rodei apenas no cenario com tag @comeco'
end


After '@fim' do
    puts 'Rodei apenas no cenario com tag @fim'
end