class Produto < ApplicationRecord
  belongs_to :sub_categoria, class_name: 'SubCategoria', foreign_key: 'subcategoria_id'

  validates :nome, :modelo, :valor, presence: true
end

# 2.5.1 :007 > produto = Produto.create(nome: "nome teste", marca: "marca teste",
#                 modelo: "modelo teste", descricao: "descricao teste", 
#                 data_fabricacao: Time.now, valor: "123,00", peso: 10, 
#                 dimensoes: "1x2", created_at: Time.now, updated_at: Time.now,
#                 sub_categoria: SubCategoria.first)
