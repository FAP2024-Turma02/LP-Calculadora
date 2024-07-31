puts "Bem-vindo à Calculadora !"


loop do


  puts "Escolha a operação que deseja realizar:"

  puts "1. Adição"

  puts "2. Subtração"

  puts "3. Multiplicação"

  puts "4. Divisão"

  puts "5. Sair"


  escolha = gets.chomp.to_i


break if escolha == 5


  if escolha < 1 || escolha > 4

    puts "Escolha inválida. Tente novamente."

    next

  end


  puts "Digite o primeiro número:"

  numero1 = gets.chomp.to_f


  puts "Digite o segundo número:"

  numero2 = gets.chomp.to_f


  resultado = nil

  case escolha

  when 1

    resultado = numero1 + numero2

  when 2

    resultado = numero1 - numero2

  when 3

    resultado = numero1 * numero2

  when 4

    if numero2 == 0

      resultado = "Erro: Divisão por zero não é permitida."

    else

      resultado = numero1 / numero2

    end

  end


  puts "O resultado é: #{resultado}"


puts "Obrigado por usar a Calculadora Ruby. Até mais!"


end