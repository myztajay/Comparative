class AddUniqueIndexToVotes < ActiveRecord::Migration[5.0]
  def change
    add_index :votes, [:user_id, :compare_id]
  end
end
