class CreateAuthorsAndAddAuthorRefToBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :authors, :name, unique: true

    add_reference :books, :author, foreign_key: true, index: true, null: true
    remove_column :books, :author, :string
  end
end
