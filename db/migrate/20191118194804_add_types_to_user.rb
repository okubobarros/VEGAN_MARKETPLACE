class AddTypesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_chef, :boolean
    add_column :users, :is_client, :boolean
  end
end
