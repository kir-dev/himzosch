# == Schema Information
#
# Table name: members
#
#  id         :bigint           not null, primary key
#  bio        :text
#  name       :string
#  rank       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Member < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true, length: { maximum: 30 }
  validates :rank, presence: true, length: { maximum: 15 }
  validates :bio, length: { maximum: 200 }
  validates :image, aspect_ratio: :square, processable_image: true
end
