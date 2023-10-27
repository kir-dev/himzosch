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
    #has_and_belongs_to_many :designs

    validates :name, presence: true, length: { maximum: 15 }
end
