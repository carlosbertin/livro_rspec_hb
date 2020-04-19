class RemoveColumnNameSubCategoriaIdFromProdutos < ActiveRecord::Migration[6.0]
  def change
    remove_column :produtos, :subcategoria_id
  end
end
