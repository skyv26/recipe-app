class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :name
      t.references :users, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
