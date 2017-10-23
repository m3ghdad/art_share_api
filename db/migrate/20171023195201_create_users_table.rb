class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.timestamps
    	t.string :username, null: false
    end
    add_index :users, :username, unique: true
  end
end
