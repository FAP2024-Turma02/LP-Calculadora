puts "\nBem-vindo à calculadora Ruby!"

def calculadora
  loop do

    puts "\nEscolha a operação"
    puts "1 para soma"
    puts "2 para subtração"
    puts "3 para multiplicação"
    puts "4 para divisão"
    puts "0 para sair"

    operacao = gets.chomp

    break if operacao == "0"

    puts "Digite o primeiro número:"
    num1 = gets.chomp.to_f

    puts "Digite o segundo número:"
    num2 = gets.chomp.to_f

    case operacao
    when "1"
        puts "\n#{num1} + #{num2} = #{soma(num1, num2)}"
    when "2"
        puts "\n#{num1} - #{num2} = #{subtracao(num1, num2)}"
    when "3"
        puts "\n#{num1} x #{num2} = #{multiplicacao(num1, num2)}"
    when "4"
        puts "\n#{num1} : #{num2} = #{divisao(num1, num2)}"
    else
        puts "\nOperação desconhecida"
    end

    gets
    limpar_tela

  end

  puts "\nCalculadora encerrada"

end

def soma(num1, num2)
    num1 + num2
end

def subtracao(num1, num2)
    num1 - num2
end

def multiplicacao(num1, num2)
    num1 * num2
end

def divisao(num1, num2)
    if num2 != 0
        num1 / num2
    else
        "Divisão por zero não é permitida"
    end
end

def limpar_tela
    if Gem.win_platform?
      system('cls')
    else
      system('clear')
    end
end

calculadora
