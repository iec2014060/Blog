class CreateCommentnews < ActiveRecord::Migration
  def change
    create_table :commentnews do |t|
      t.string :Commenter
      t.text :body
      t.references :article

      t.timestamps
    end
    add_index :commentnews, :article_id
  end
end
