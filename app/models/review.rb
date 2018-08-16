class Review < ApplicationRecord
  belongs_to :resturant
  belongs_to :user
  validates :review, length: { :maximum => 140, :minimum => 0 }
  validates :stars, presence: true
  scope :sorted, lambda { order("resturant_user_review.position ASC") }
  scope :newest_first, lambda { order("resturant_user_review.created_at DESC")}
end
