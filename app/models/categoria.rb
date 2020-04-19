class Categoria < ApplicationRecord
    has_many :sub_categorias
    validates :nome, presence: true
end
