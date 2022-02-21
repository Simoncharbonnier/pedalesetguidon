class ChangeUsersIdToUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :bikes, :users_id, :user_id
    rename_column :rentals, :users_id, :user_id
    rename_column :rentals, :bikes_id, :bike_id
  end
end
