require_relative 'lib/fabrica/carro' #carregar arquivos relativos ao projeto
require 'json' #carregar gems do meu gemset
require 'net/http'

novo_carro = Fabrica::Carro.new('Tesla', 'Model X')

novo_carro.acelera

#execução inicial de exemplo

uri = URI('http://jsonplaceholder.typicode.com/users')

response = Net::HTTP.get uri
usuarios = JSON.parse response
usuarios.each do |u|
    if u["name"].start_with?("Clementine")
        novo_carro.dono = u["name"]
        break
    end
end

puts "#{novo_carro.dono} é o dono do #{novo_carro.modelo}"

puts 'Finalizando a execução'