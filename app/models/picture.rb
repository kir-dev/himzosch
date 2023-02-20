# == Schema Information
#
# Table name: pictures
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Picture < ApplicationRecord
  has_one_attached :img
  has_many :enquiries, dependent: :destroy
  has_many :users, through: :enquiries
end
