class AddFieldsToPicture < ActiveRecord::Migration[7.0]
  def change
    add_column :pictures, :author, :string
    add_column :pictures, :description, :string
  end
end
