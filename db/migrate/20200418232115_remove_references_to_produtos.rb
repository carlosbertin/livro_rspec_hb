class RemoveReferencesToProdutos < ActiveRecord::Migration[6.0]
  def change
    remove_column :produtos, :subcategoria_id
    # remove_column :produtos, :sub_categoria_id
  end
end
