class AddSubcategoriaToProdutos < ActiveRecord::Migration[6.0]
  def change
    add_reference :produtos, :sub_categoria, foreign_key: true
  end
end
