class SubCategoria < ApplicationRecord
  belongs_to :categoria

  validates :nome, presence: true
end
