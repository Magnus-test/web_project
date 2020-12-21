class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :post
      t.integer :author
      t.string :content

      t.timestamps
      add_foreign_key :post
      add_foreign_key :author
    end
  end
end
