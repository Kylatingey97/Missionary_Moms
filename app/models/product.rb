class Product < ApplicationRecord
  validates_presence_of :title, :body
  belongs_to :category
end
