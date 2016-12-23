class CreateCompares < ActiveRecord::Migration[5.0]
  def change
    create_table :compares do |t|
      t.string :img1_url
      t.string :img2_url
      t.string :headline
      t.integer :img1_pts
      t.integer :img2_pts
      t.references :user
      t.timestamps
    end
  end
end
