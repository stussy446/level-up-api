class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :chosen, default: false 
      t.boolean :completed, default: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
