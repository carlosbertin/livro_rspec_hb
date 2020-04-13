class AlterColumnValorToStringFromProduto < ActiveRecord::Migration[6.0]
  def change
    change_column :produtos, :valor, :string
  end
end
