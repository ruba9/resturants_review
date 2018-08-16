class Resturant < ActiveRecord::Base
  has_many :categories
  belongs_to :user
  validates :name, presence: true
  scope :sorted, lambda { order("resturants.position ASC") }
  scope :newest_first, lambda { order("resturants.created_at DESC")}
end
