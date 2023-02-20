class CreateEnquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :enquiries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
