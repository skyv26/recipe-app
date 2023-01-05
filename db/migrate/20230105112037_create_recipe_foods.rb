class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity, limit: 2
      t.references :foods, null: false, foreign_key: {on_delete: :cascade}
      t.references :recipes, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
