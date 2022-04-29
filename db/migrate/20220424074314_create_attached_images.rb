class CreateAttachedImages < ActiveRecord::Migration[6.1]
  def change
    create_table :attached_images do |t|
      t.text :content
      t.references :general_item, null: false, foreign_key: true

      t.timestamps
    end
    add_index :attached_images, [:general_item_id, :created_at]
  end
end
