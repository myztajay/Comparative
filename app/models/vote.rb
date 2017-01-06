class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :comparative
  
  def choiceOne
  end
  
  def choiceTwo
  end
  
end
