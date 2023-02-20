# == Schema Information
#
# Table name: site_contents
#
#  id         :bigint           not null, primary key
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_site_contents_on_name  (name) UNIQUE
#
require "test_helper"

class SiteContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
