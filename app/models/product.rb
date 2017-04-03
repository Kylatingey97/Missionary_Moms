class Product < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  belongs_to :category
end
