class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }

  # validates :rating,

  #  validates :content, :rating, inclusion: { in: category, rating,
  #    message: "%{value} is not valid" }
end
