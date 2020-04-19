class SubCategoria < ApplicationRecord
  belongs_to :categoria
  has_many :produtos, class_name: 'Produto', foreign_key: 'subcategoria_id'

  validates :nome, presence: true
end
