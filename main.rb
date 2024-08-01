require_relative 'functions'

iniciar

loop do
  print "\e[35mDIGITE O PRIMEIRO NÚMERO:\e[0m "
  num1 = gets.chomp.to_f
  
  print "\e[35mDIGITE O SEGUNDO NÚMERO:\e[0m "
  num2 = gets.chomp.to_f
  
  puts 

  menu
  operacao = gets.chomp.to_i
  
  puts 

  case operacao
    when 1
      print "\e[32mRESULTADO:\e[0m " , somar(num1, num2)
    when 2
      print "\e[32mRESULTADO:\e[0m " , subtrair(num1, num2)
    when 3
      print "\e[32mRESULTADO:\e[0m " , dividir(num1, num2)
    when 4
      print "\e[32mRESULTADO:\e[0m " , multiplicar(num1, num2)
    else
      puts "\e[31mOpção invalida!\e[0m"
    end
  
  sleep 2

  print "\nDeseja continuar usando a calculadora \e[33m[1- SIM, 2-NÃO]\e[0m: "
  continuar = gets.chomp.to_i

  if  continuar == 2
    break
  end
  sleep 1
  limpar_tela
end