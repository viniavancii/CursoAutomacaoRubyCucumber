After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_') #vai tirar o espaco de cada cenario e vai colocar o '_'

    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'falhou')
    else
        tirar_foto(scenario_name.downcase!, 'passou')
    end

end