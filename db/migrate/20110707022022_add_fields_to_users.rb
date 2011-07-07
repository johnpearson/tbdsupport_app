class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :computers, :string
    add_column :users, :devices, :string
    add_column :users, :company, :string
  end

  def self.down
    remove_column :users, :name, :string
    remove_column :users, :computers, :string
    remove_column :users, :devices, :string
    remove_column :users, :company, :string
  end
end
