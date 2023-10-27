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
require "test_helper"

class DesignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
