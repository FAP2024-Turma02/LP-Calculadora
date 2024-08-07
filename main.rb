require './operations'

def calculadora
  loop do
  puts "\nCalculadora"
  puts "1. Somar"
  puts "2. Subtração"
  puts "3. Multiplicar"
  puts "4. Dividir"
  puts "5. Sair"

  opcao = gets.chomp.to_i

  puts "Digite o primeiro número:"
    num1 = gets.chomp.to_f
    puts "Digite o segundo número:"
    num2 = gets.chomp.to_f
  
  case opcao
  when 1
    resultado = somar(num1, num2)
  when 2
    resultado = subtrair(num1,num2)
  when 3
    resultado = multiplicar(num1,num2)
  when 4
    resultado = dividir(num1,num2)
  when 5 
    puts "Finalizando calculadora"
    break
  else
    puts "Opção inválida!"
  end

    puts "Resultado: #{resultado}"
  end  
end

calculadora