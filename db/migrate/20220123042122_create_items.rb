class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :type
      t.string :title
      t.string :subtitle
      t.string :writer
      t.string :created_by
      t.datetime :date
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
