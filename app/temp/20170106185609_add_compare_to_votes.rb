class AddCompareToVotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :votes, :compare, foreign_key: true
  end
end
