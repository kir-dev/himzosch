class AddTitleToSiteContent < ActiveRecord::Migration[7.0]
  def change
    add_column :site_contents, :title, :string
  end
end
