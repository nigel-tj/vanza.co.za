class CreateLifestyleBanners < ActiveRecord::Migration
  def change
    create_table :lifestyle_banners do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image
      t.boolean :active

      t.timestamps null: false
    end
  end
end
