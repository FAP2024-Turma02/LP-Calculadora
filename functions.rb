def iniciar
  limpar_tela
  print "\e[32mINICIANDO CALCULADORA...\e[0m"
  sleep 3
  limpar_tela
end

def menu
print "\e[36m1-Soma 
\r2-Subtração 
\r3-Divisão
\r4-Multiplicação\e[0m
\rQUAL OPERAÇÃO DESEJA: "
end

def somar(num1, num2)
  return num1 + num2
end 

def subtrair(num1, num2)
  return num1 - num2
end 

def dividir(num1, num2)
  if num2 == 0
    puts "\e[31mDivisão não pode ser feita por 0!\e[0m"
  end
  return num1 / num2
end 

def multiplicar(num1, num2)
  return num1 * num2 
end 

def limpar_tela
  system("cls") || system("clear")
end