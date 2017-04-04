class Item < ApplicationRecord
  validates_presence_of :title
  belongs_to :categories
end
