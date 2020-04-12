class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nome
      t.datetime :data_nascimento

      t.timestamps
    end
  end
end
