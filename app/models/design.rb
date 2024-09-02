# == Schema Information
#
# Table name: designs
#
#  id          :bigint           not null, primary key
#  created     :datetime
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Design < ApplicationRecord
  has_one_attached :image
  has_many :design_labels, dependent: :destroy
  has_many :labels, through: :design_labels

  validates :name, presence: true, length: { maximum: 30 }
  validates :description, length: { maximum: 200 }
  validates :created, presence: true
  validates :image, presence: true, aspect_ratio: :square, processable_image: true
end
