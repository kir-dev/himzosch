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
require "test_helper"

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
