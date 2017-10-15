class AddAttachmentCompareimg1Compareimg2ToCompares < ActiveRecord::Migration
  def self.up
    change_table :compares do |t|
      t.attachment :compareimg1
      t.attachment :compareimg2
    end
  end

  def self.down
    remove_attachment :compares, :compareimg1
    remove_attachment :compares, :compareimg2
  end
end
