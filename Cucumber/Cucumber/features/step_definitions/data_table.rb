  Dado('que tenha umas laranjas') do |table|
    #quando é linha (data table), transforma o tabel em rows_hash, fazendo um hash e passa o reader
    #se tivesse mais um reader seria: @laranja2 = table.rows_hash['laranja2'].to_i
    @laranja = table.rows_hash['laranja'].to_i #transforma o valor da table em um hash, convertendo para inteiro
  end
  
  Quando('eu corto {int} laranjas') do |valor|
    @cortar = valor
    @total = @laranja - @cortar
  end
  
  Então('eu verifico quantas laranjas sobraram inteiras') do
   expect(@total).to eq 8
  end
  
  Dado('que eu tenha umas laranjas') do |table|
    #quando é coluna (data table), transforma o tabel em hashes, fazendo um for each e passa o reader
    #se tivesse mais um reader seria: 
    # table.hashes.each do |valor4|
    #     @laranja3 = valor4['laranja3'].to_i
    # end
    table.hashes.each do |valor3|
        @laranja = valor3['laranja'].to_i
    end
  end
  
  Quando('eu chupo {int} laranjas') do |valor2|
    @chupei = valor2
    @resultado = @laranja - @chupei
  end
  
  Então('eu verifico quantas laranjas sobraram') do
    expect(@resultado).to eq 8
  end