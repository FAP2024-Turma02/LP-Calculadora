
def clear_screen

    system("clear") || system("cls")  

end
def subtracao
  
    puts "digite o Valor Total"
    valorTotal = gets.chomp.to_f
    puts "digite o Valor para subtrair"
    valorSubtrair = gets.chomp.to_f
    total = valorTotal - valorSubtrair
    return total.to_i
    
end

def adição
  
    puts "digite o Valor"
    valorTotal = gets.chomp.to_f
    puts "digite o Valor para adição"
    valorSubtrair = gets.chomp.to_f
    total = valorTotal + valorSubtrair
    return total.to_i
    
end

def multiplicacao
  
    puts "digite o que deseja multiplicar"
    valorTotal = gets.chomp.to_f
    puts "digite quantas vezes deseja multiplicar "
    valorSubtrair = gets.chomp.to_f
    total = valorTotal * valorSubtrair
    return total.to_i
    
end

def avançado
  
    puts "digite o valor com as operação e o valor"
    valorTotal = gets.chomp.to_f
    return valorTotal.to_i
    
end

def main
    clear_screen()
puts "Calculadora Terminal
Escolha as operações:
1: Subtração
2: adição
3: Mutiplicação
4: Avançado"
puts "Selecione a opção:"
opcao = gets.chomp.to_i
clear_screen()


case opcao
when 1
   
 
    resultado = subtracao
    clear_screen()
    puts "Resultado: #{resultado}"
    puts "enter para voltar"
   gets.chomp
main

when 2
   
 
    resultado = adição
    clear_screen()
    puts "Resultado: #{resultado}"
    puts "enter para voltar"
   gets.chomp
main

when 3
   
 
    resultado = multiplicacao
    clear_screen()
    puts "Resultado: #{resultado}"
    puts "enter para voltar"
   gets.chomp
main

when 4
   
 
    resultado = avançado
    clear_screen()
    puts "Resultado: #{resultado}"
    puts "enter para voltar"
    gets.chomp
main
end
end

main