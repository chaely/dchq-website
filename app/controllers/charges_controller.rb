class ChargesController < ApplicationController

  def create
    @amount = 2000

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Open Source Donation',
      :currency    => 'gbp'
    )

    redirect_to donation_success_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
  
end
