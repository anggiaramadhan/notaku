class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.string :name
      t.integer :parent_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :folders, :parent_id
  end
end
