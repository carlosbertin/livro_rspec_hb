class AdicionaColSubcategoriaIdFkToProdutos < ActiveRecord::Migration[6.0]
  def change
    # add_foreign_key :contents, :projects, column: :project_id, #primary_key: "id"
    add_column :produtos, :subcategoria_id, :bigint
    add_foreign_key :produtos, :sub_categorias, column: :subcategoria_id
  end
end
