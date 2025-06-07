class AddStageNameToArtists < ActiveRecord::Migration[8.0]
  def change
    add_column :artists, :stage_name, :string
  end
end
