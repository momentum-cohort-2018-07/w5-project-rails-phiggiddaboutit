class DeleteStoryIdfromComments < ActiveRecord::Migration[5.2]
  def change
      remove_column :comments, :story_id
  end
end
