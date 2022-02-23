class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :content

      t.timestamps
    end
    add_index :roles, [:id, :created_at]
  end
end
