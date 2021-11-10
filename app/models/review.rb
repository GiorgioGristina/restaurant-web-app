class Review < ApplicationRecord
  belongs_to :restaurant_id

  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :raiting, presence: true
  validates :raiting, inclusion: {in: (0..5)}
  validates :raiting, numericality: {only_integer: true}
end
