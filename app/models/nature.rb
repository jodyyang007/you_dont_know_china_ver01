class Nature < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true 
  validates :details, presence: true  
  validates :image, presence: true 
end
