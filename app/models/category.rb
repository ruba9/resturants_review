class Category < ApplicationRecord
  belongs_to :resturant
  validates :name, presence: true
  scope :sorted, lambda { order("categories.position ASC") }
  scope :newest_first, lambda { order("categories.created_at DESC")}
end
