class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps
    end
    add_index :stocks, :ticker
    add_index :stocks, :name
    add_index :stocks, :last_price
  end
end
