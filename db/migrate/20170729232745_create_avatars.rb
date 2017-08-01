class CreateAvatars < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :img, null: false
      t.integer :xp, default: 0

      t.timestamps
    end
  end
end
