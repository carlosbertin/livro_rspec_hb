require 'rails_helper'

RSpec.describe Produto, type: :model do
  describe "checa validações" do
    produto = Produto.new(nome: "Celular", modelo: "", valor: "1.239,65")

    it "inválido" do
      produto.valid? # run validations
      expect(produto.errors[:modelo]).to include("can't be blank")
      expect(produto.errors[:subcategoria]).to include("must exist")
    end

    it "válido" do
      produto.modelo = "Motorola Zen 3"
      produto.sub_categoria_id = 1
      produto.valid? # run validations
      expect(produto.errors[:modelo]).to_not include("can't be blank")
      expect(produto.errors[:sub_categoria_id]).to_not include("must exist")
    end

  end
end
