  Quando('realizo a media') do                                                    
    @media = @soma / 2
  end                                                                            
                                                                                 
  Então('devo ver o resultado da média') do                                      
    expect(@media).to eq 5
  end                                                                            