class AddUserIdToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :user_id, :string
  end
end
