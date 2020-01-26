class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :location
      t.integer :user_id
      t.string :spotify_playlistId

      t.timestamps
    end
  end
end
