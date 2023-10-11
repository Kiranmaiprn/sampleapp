class Addfirstnametoauthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :title, :string
    # add_column :authors, :email, :string
    # add_column :authors, :visits, :integer
    # add_column :authors, :order_count, :integer
    # add_column :authors, :lock_version, :integer
  end
end
