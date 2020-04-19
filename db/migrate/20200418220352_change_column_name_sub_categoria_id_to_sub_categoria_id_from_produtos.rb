class ChangeColumnNameSubCategoriaIdToSubCategoriaIdFromProdutos < ActiveRecord::Migration[6.0]
  def change
    rename_column :produtos, :sub_categoria_id, :subcategoria_id
  end
end
