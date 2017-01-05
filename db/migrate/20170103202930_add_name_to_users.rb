class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, index: true
    add_column :users, :image, :string, index: true
  end
end
