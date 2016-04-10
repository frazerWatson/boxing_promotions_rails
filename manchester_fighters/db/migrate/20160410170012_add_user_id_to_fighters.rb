class AddUserIdToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :user_id, :integer
  end
end
