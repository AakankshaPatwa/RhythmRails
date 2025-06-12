class AddPayedOutToStreams < ActiveRecord::Migration[8.0]
  def change
    add_column :streams, :payed_out, :boolean, default: false
  end
end
