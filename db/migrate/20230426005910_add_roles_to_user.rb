class AddRolesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :roles, :jsonb, default: []
  end
end
