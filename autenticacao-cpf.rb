
require "cpf_cnpj"

puts 'Por favor digite os números do seu CPF'
cpf_cnpj = gets.chomp

cpf = CPF.new(cpf_cnpj)
cpf_formatado = cpf.formatted
if CPF.valid?(cpf_formatado)
  puts "O CPF #{cpf_formatado} é válido"
else
  puts "CPF inválido"
  puts 'Gostaria de gerar um CPF? (s/n)'
  novo_cpf = gets.chomp
  if novo_cpf == 's'
    cpf_gerado = CPF.generate
    cpf_objeto = CPF.new(cpf_gerado)
    cpf_formatado_gerado = cpf_objeto.formatted
    puts "Seu CPF é: #{cpf_formatado_gerado}"
  end
end
puts 'Fim'
