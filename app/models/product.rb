class Product < ApplicationRecord
  
  belongs_to :genre
  
  has_one_attached :image
end
