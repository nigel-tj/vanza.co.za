class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.datetime :date_uploads
      t.string :cover
      t.boolean :download_flag

      t.timestamps null: false
    end
  end
end
