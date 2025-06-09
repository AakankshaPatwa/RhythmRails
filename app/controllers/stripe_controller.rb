class StripeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhooks]
  before_action :auth_webhook_request, only: [:webhooks]

  def account_session
    account_session = Stripe::AccountSession.create({
      account: current_artist.stripe_account_id,
      components: {
        account_onboarding: {
          enabled: true,
          features: {external_account_collection: true},
        },
      },
    })

    render json: { client_secret: account_session.client_secret }
  end
end