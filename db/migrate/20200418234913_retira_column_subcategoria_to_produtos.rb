class RetiraColumnSubcategoriaToProdutos < ActiveRecord::Migration[6.0]
  def change
    remove_column :produtos, :subcategoria_id
    # remove_foreign_key :produtos, name: "subcategoria_id"

  end
end
