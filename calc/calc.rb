require_relative 'soma'
require_relative 'subtracao'
require_relative 'multiplicacao'
require_relative 'divisao'

puts "Digite o primeiro número para calcular: "
a = gets.chomp.to_i

puts "Digite o segundo número para obter o resultado: "
b = gets.chomp.to_i

puts "Escolha uma operação: "
puts "1. Soma;"
puts "2. Subtração;"
puts "3. Multiplicação;"
puts "4. Divisão."
operacao = gets.chomp.to_i

case operacao
    
when 1
    soma = Somar.new(a, b)
    resultado = soma.somar
    puts "Resultado da soma é #{resultado}"
when 2
    subtracao = Subtrair.new(a, b)
    resultado = subtracao.subtrair
    puts "Resultado da subtração é #{resultado}"
when 3
    multiplicacao = Multiplicar.new(a, b)
    resultado = multiplicacao.multiplicar
    puts "Resultado da multiplicação é de #{resultado}"
when 4
    divisao = Dividir.new(a, b)
    resultado = divisao.dividir
    puts "Resultado da divisão é de #{resultado}"
else
    puts "Escolha uma operação válida."
end