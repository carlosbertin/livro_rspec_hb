class CreateSubCategorias < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_categorias do |t|
      t.string :nome
      t.text :descricao
      t.references :categoria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
