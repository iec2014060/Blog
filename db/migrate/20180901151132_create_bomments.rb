class CreateBomments < ActiveRecord::Migration
  def change
    create_table :bomments do |t|
      t.string :Commenter
      t.text :body
      t.references :article

      t.timestamps
    end
    add_index :bomments, :article_id
  end
end
