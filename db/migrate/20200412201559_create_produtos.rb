class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :marca
      t.string :modelo
      t.text :descricao
      t.date :data_fabricacao
      t.float :valor
      t.float :peso
      t.string :dimensoes
      t.references :sub_categoria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
