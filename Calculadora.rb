# Método para limpar a tela no terminal
def limpar_tela
  system('clear') || system('cls')
end

loop do
  # Solicita ao usuário que digite o primeiro operando
  puts "Digite o primeiro número:"
  operando1 = gets.chomp.to_f

  # Solicita ao usuário que digite o segundo operando
  puts "Digite o segundo número:"
  operando2 = gets.chomp.to_f

  # Solicita ao usuário que escolha uma operação
  puts "Escolha a operação (+, -, *, /):"
  operacao = gets.chomp

  # Realiza a operação escolhida
  resultado = case operacao
              when "+"
                operando1 + operando2
              when "-"
                operando1 - operando2
              when "*"
                operando1 * operando2
              when "/"
                if operando2 == 0
                  "Erro: Divisão por zero"
                else
                  operando1 / operando2
                end
              else
                "Operação inválida"
              end

  # Exibe a operação e o resultado de forma amigável
  if resultado.is_a?(String)
    puts resultado
  else
    puts "#{operando1} #{operacao} #{operando2} = #{resultado}"
  end

  # Pergunta ao usuário se deseja realizar uma nova operação ou encerrar o programa
  puts "Deseja realizar outra operação? (s/n):"
  continuar = gets.chomp.downcase

  # Sai do loop se o usuário digitar 'n'
  break if continuar != 's'

  # Limpa a tela antes de iniciar uma nova operação
  limpar_tela
end

puts "Calculadora encerrada."
