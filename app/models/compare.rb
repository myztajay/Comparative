class Compare < ApplicationRecord
  belongs_to :user
  #paperclip setup
  has_attached_file :compareimg1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :compareimg1, content_type: /\Aimage\/.*\z/
  # validates_attachment_file_name :compareimg1, :matches => [/png\Z/, /jpe?g\Z/]

  has_attached_file :compareimg2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :compareimg2, content_type: /\Aimage\/.*\z/
  # validates_attachment_file_name :compareimg2, :matches => [/png\Z/, /jpe?g\Z/]

end
