class AddStripeAccountIdToArtists < ActiveRecord::Migration[8.0]
  def change
    add_column :artists, :stripe_account_id, :string
  end
end
