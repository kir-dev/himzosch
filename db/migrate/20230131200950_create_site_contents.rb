class CreateSiteContents < ActiveRecord::Migration[7.0]
  def change
    create_table :site_contents do |t|
      t.string :name

      t.timestamps
    end
    add_index :site_contents, :name, unique: true
  end
end
