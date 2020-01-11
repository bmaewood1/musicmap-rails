class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :playlist_id
      t.string :title
      t.string :artist
      t.string :spotify_url

      t.timestamps
    end
  end
end
