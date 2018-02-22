class ChargesController < ApplicationController
  def create
    # Amount in cents
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: params[:amount],
      # amount: 50000,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )

    order_is_paid = Order.find(params[:orderId]).update(status: 1)
    Purchase.create(email: params[:stripeEmail], card: params[:stripeToken],
                    amount: params[:amount], description: charge.description,
                    currency: charge.currency,
                    customer_id: customer.id, product_id: 1)
    redirect_to order_path(params[:orderId])
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
end
