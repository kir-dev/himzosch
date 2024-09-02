# == Schema Information
#
# Table name: design_labels
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  design_id  :bigint           not null
#  label_id   :bigint           not null
#
# Indexes
#
#  index_design_labels_on_design_id  (design_id)
#  index_design_labels_on_label_id   (label_id)
#
# Foreign Keys
#
#  fk_rails_...  (design_id => designs.id)
#  fk_rails_...  (label_id => labels.id)
#
class DesignLabel < ApplicationRecord
  belongs_to :design
  belongs_to :label
end
