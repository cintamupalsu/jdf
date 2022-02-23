class AddIndexToItems < ActiveRecord::Migration[6.1]
  def change
    add_index :items, [:datetime, :item_type_id, :user_id]
  end
end
