class Produto < ApplicationRecord
  belongs_to :subcategoria

  validates :nome, :modelo, :valor, presence: true

end
