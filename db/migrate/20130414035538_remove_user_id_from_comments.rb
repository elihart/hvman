class RemoveUserIdFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :user_id
  end

  def down
    add_column :comments, :user_id
  end
end
