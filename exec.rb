$LOAD_PATH << "./"

require 'active_record'
require 'rubygems'
require 'app/models/restaurante'
require 'pg'

class Exec

end

r = Restaurante.new :nome => "Fasano", :endereco => "Av. dos Restaurantes, 126", :especialidade => "Comida italiana"