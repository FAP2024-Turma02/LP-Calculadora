def calculadora()
    puts "Calculadora!"
    loop do
        puts"\n Escolha a operação desejada:"
        puts "1 - Adição"
        puts "2 - Subtração"
        puts "3 - Multiplicação"
        puts "4 - Divião"
        puts "0 - Sair"

        print "Opção: "
        opcao = gets.chomp.to_i
        case opcao
        when 1
            print "Digite o primeiro número: "
            num1 = gets.chomp.to_f
            print "Digite o segundo número: "
            num2 = gets.chomp.to_f
            resultado = num1 + num2
            puts "Resultado: #{resultado}"
        when 2
            print "Digite o primeiro número: "
            num1 = gets.chomp.to_f
            print "Digite o segundo número: "
            num2 = gets.chomp.to_f
            resultado = num1 - num2
            print "Resultado: #{resultado}"
        when 3
            print "Digite o primeiro número: "
            num1 = gets.chomp.to_f
            print "Digite o segundo número: "
            num2 = gets.chomp.to_f
            resultado = num1 * num2
            puts "Resultado: #{resultado}" 
        when 4
            print "Digite o primeiro número: "
            num1 = gets.chomp.to_f
            print "Digite o segundo número: "
            num2 = gets.chomp.to_f
            if num2 == 0
                puts "Erro: divisão por zero não existe"
            else 
                resultado = num1 / num2
                puts "Resultado: #{resultado}"
            end
        when 0
            puts "Obrigado por usar nossa calculadora, volte sempre"
            break
        else
            puts "Opção inválida. Por facor, escolha uma das opções mostradas na tela"
        end
    end
end
calculadora()