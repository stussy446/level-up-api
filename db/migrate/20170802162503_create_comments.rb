class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false
      t.integer :like_count, default: 0
      t.timestamps
    end
  end
end
