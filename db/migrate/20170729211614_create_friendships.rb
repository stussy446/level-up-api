class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false
      t.boolean :accepted, default: false 

      t.timestamps
    end
  end
end
