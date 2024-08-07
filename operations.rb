def somar(num1, num2)
  num1 + num2
end

def subtrair(num1, num2)
  num1 - num2
end

def multiplicar(num1, num2)
  num1 * num2
end

def dividir(num1, num2)

  if num2 == 0
    puts "Erro: Divisão por zero!"
    return nil
  else
    num1 / num2
  end
end
