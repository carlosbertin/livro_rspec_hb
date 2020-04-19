require 'rails_helper'

RSpec.describe SubCategoria, type: :model do
  describe 'checa relacionamentos' do 

    it "Uma Categoria tem muitas SubCategoras" do
      r = Categoria.reflect_on_association(:sub_categorias)
      expect(r.macro).to eq(:has_many)
    end

    it "Uma SubCategoria pertence a uma Categoria" do
      c = SubCategoria.reflect_on_association(:categoria)
      expect(c.macro).to eq(:belongs_to)
    end

    it "Uma SubCategoria tem um ou muitos Produtos" do
      p = SubCategoria.reflect_on_association(:produtos)
      debugger
      expect(p.macro).to eq(:has_many)
    end

    it "Um Produto pertence a uma Subcategoria" do
      g = Produto.reflect_on_association(:sub_categoria)
      expect(g.macro).to eq(:belongs_to)
    end
      
  end

end
