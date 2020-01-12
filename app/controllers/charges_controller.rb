require 'stripe'

class ChargesController < ApplicationController
  # POST /charge
  # POST /charge.json
  def create
    # `source` is obtained with Stripe.js; see https://stripe.com/docs/payments/accept-a-payment-charges#web-create-token
    charge = Stripe::Charge.create({
      amount: params[:amount],
      currency: 'aud',
      source: 'tok_amex',
      receipt_email: params[:receipt_email],
      description: 'My First Test Charge (created for API docs)',     
    })
    render json: charge
  end
end
