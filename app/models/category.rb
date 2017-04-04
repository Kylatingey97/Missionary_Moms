class Category < ApplicationRecord
  validates_presence_of :title
  has_many :items
  belongs_to :products
end
