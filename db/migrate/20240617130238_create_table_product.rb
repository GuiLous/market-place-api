class CreateTableProduct < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.timestamps
    end
  end
end
