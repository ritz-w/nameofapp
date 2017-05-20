if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => ENV["publishable_key"],
    :secret_key => ENV["secret_key"],
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]