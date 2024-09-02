class CreateDesignLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :design_labels do |t|
      t.references :design, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true

      t.timestamps
    end
  end
end
