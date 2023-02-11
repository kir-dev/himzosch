# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
    validates :url, presence: true
end
