require_relative 'operacoes'

verde = "\e[32m"
resetcor = "\e[0m"
vermelho = "\e[31m"

loop do
    menu

    op = gets.chomp.to_i

    limpaTela

    case op
    when 1
        puts "-----------------SOMA------------------"
        n1 = valida_numero("Digite o primeiro número: ")
        n2 = valida_numero("Digite o segundo número: ")

        soma(n1, n2)
    when 2 
        puts "-----------------SUBTRAÇÂO---------------"
        n1 = valida_numero("Digite o primeiro número: ")
        n2 = valida_numero("Digite o segundo número: ")

        subtra(n1, n2)
    when 3
        puts "---------------DIVISÂO-------------------"
        n1 = valida_numero("Digite o divisor: ")
        n2 = valida_numero("Digite o dividendo: ")
        
        divisao(n1, n2)
    when 4
        puts "--------------MULTIPLICAÇÂO----------------"
        n1 = valida_numero("Digite o primeiro número: ")
        n2 = valida_numero("Digite o segundo número: ")
        multi(n1, n2)
    when 5
        puts " #{verde}Saindo...#{resetcor}"
        break
    else 
        puts" #{vermelho}Valor invalido!#{resetcor}"
    
    end
    puts "\n#{verde}Pressione Enter para voltar para o menu...#{resetcor}"
    gets

    limpaTela

end
