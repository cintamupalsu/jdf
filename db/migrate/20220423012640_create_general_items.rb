class CreateGeneralItems < ActiveRecord::Migration[6.1]
  def change
    create_table :general_items do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.references :item_type, null: false, foreign_key: true

      t.timestamps
    end
    add_index :general_items, [:created_date]
  end
end
