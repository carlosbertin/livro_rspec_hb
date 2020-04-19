require 'rails_helper'

RSpec.describe Categoria, type: :model do
  describe 'checa validação' do
    categoria = Categoria.new(nome: "Eletrônicos", descricao: "")

    it 'válido' do
      expect(categoria.nome).not_to be_empty
    end

    it 'inválido' do
      categoria.nome = nil
      expect(categoria).to_not be_valid
      expect(categoria.errors.messages[:nome]).to eq ["can't be blank"]
    end
  end

end
