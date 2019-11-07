class Game < ApplicationRecord
	belongs_to :round
	belongs_to :team_home, class_name: "Team", foreign_key: "team_home_id"
	belongs_to :team_away, class_name: "Team", foreign_key: "team_away_id"
	
end
=begin
class Produto < ApplicationRecord
	has_and_belongs_to_many :pedidos,  :join_table => :items
end


class Pedido < ApplicationRecord
	has_and_belongs_to_many :produtos,  :join_table => :items
end

empresa
has_many contratacoes
has_many :funcionarios, through: :contratacoes

funcionario
has_many contratacoes
contratação
belongs_to :funcionario
belongs_to :empresa

empresa.id 

contratacoes = Contratacao.where("empresa_id = ?", @empresa.id)
@empresa.contratacoes
=end


