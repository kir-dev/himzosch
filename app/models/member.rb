class Member < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true, length: { maximum: 30 }
  validates :rank, presence: true, length: { maximum: 15 }
  validates :bio, length: { maximum: 200 }
end
