class CreateCommentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.timestamps
    	t.integer :author_id, null: false
    	t.integer :artwork_id, null: false
    	t.text :body, null: false
    end
    add_index :comments, :author_id
    add_index :comments, :artwork_id
  end
end
