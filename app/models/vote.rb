class Vote < ApplicationRecord
  validates_uniqueness_of :user_id, :scope => :compare_id
  
  belongs_to :user
  belongs_to :compare

end
