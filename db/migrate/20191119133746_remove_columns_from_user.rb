class RemoveColumnsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :is_chef
    remove_column :users, :is_client
  end
end
