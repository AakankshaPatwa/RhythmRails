class AddStreamsCountToSongs < ActiveRecord::Migration[8.0]
  def change
    add_column :songs, :streams_count, :integer
  end
end
