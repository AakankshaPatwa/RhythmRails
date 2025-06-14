class ArtistsController < ApplicationController
  def dashboard
    if current_artist.payouts_enabled?
      Stripe.api_key = Rails.application.credentials.dig(:stripe, :sk)
  
      @balance ||= Stripe::Balance.retrieve({}, {
        stripe_account: current_artist.stripe_account_id
      })
    end
  end
  
end
