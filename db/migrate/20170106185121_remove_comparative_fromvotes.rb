class RemoveComparativeFromvotes < ActiveRecord::Migration[5.0]
  def change
    remove_column :votes, :comparative_id
  end
end
