class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :song_id
      t.string :date
      t.string :venue
      t.string :category
      t.string :songkick_url

      t.timestamps
    end
  end
end
