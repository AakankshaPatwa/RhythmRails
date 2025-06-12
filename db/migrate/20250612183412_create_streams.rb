class CreateStreams < ActiveRecord::Migration[8.0]
  def change
    create_table :streams do |t|
      t.belongs_to :song, null: false, foreign_key: true
      t.belongs_to :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
