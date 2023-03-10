class CreateInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_foods do |t|
      t.integer :quantity, limit: 2
      t.references :inventory, references: :inventories, null: false, foreign_key: {to_table: :inventories, on_delete: :cascade}
      t.references :food, references: :foods, null: false, foreign_key: {to_table: :foods, on_delete: :cascade}

      t.timestamps
    end
  end
end
