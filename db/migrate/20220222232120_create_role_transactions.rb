class CreateRoleTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :role_transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
    add_index :role_transactions, [:user_id, :role_id], unique: true
  end
end
