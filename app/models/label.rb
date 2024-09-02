# == Schema Information
#
# Table name: labels
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Label < ApplicationRecord
  has_many :design_labels, dependent: :destroy
  has_many :designs, through: :design_labels

  validates :name, presence: true, length: { maximum: 15 }
end
