class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
      t.index [:user_id, :topic_id], unique: true
    end
  end
end
