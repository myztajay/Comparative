class RemoveImgpts1FromCompare < ActiveRecord::Migration[5.0]
  def change
    remove_column :compares, :img1_pts
    remove_column :compares, :img2_pts
    add_column :compares, :img1_pts, :integer, :null => false, :default => 0
    add_column :compares, :img2_pts, :integer, :null => false, :default => 0
  end
end
