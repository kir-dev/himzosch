# == Schema Information
#
# Table name: pictures
#
#  id          :bigint           not null, primary key
#  author      :string
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Picture < ApplicationRecord
  has_one_attached :img

  validates :name, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 200 }

end
