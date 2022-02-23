class AddGithnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :githname, :string
  end
end
