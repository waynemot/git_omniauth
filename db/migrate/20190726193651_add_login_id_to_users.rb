class AddLoginIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :login_id, :string
    add_column :users, :nuid, :string
  end
end
