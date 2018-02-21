class ChargesController < ApplicationController
  def new; end

  def create
    # Amount in cents
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      # amount: params[:amount],
      amount: 50000,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
# Thank you, your order has been placed
# We've sent you an e-mail confirmation
# Invoice Number :
# Your orders will be delivered to #{address} . Estimated delivery : 10-03-2018
# Review your order | detail link
# continue shopping

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
  end
end
