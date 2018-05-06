class AddFeaturedToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :featured, :boolean
  end
end
