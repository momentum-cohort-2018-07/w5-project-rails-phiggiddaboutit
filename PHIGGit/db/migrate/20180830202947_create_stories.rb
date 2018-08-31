class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.text :text
      t.text :title
      t.string :img_url
      t.integer :vote_count
      t.integer :user_id

      t.timestamps
    end
  end
end
