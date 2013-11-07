class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :location, :string
    add_column :users, :technologies, :string
    add_column :users, :blerb, :text
    add_column :users, :facebook, :string
    add_column :users, :linkedin, :string
    add_column :users, :blog, :string
    add_column :users, :github, :string
    add_column :users, :personal_site, :string
    add_column :users, :other_site, :string
    add_column :users, :admin, :boolean, :default => false
  end
end
