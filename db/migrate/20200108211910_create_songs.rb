class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :playlist_id
      t.string :title
      t.string :artist
      t.string :spotify_url
      t.string :track_id
      t.string :spotify_artistId
      t.string :date
      t.string :venue
      t.string :category
      t.string :songkick_url
      t.string :lat
      t.string :lng


      t.timestamps
    end
  end
end
