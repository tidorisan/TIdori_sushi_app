class Users::CreditCardsController < ApplicationController
  def index
  	@credit_card = CreditCard.new
  	@credit_cards = CreditCard.all
  end

  def create
  	@credit_card = CreditCard.new(credit_card_params)
    if @credit_card.save
      redirect_to users_credit_cards_path
    else
      render 'users/credit_cards/index'
    end
  end

  def edit
  	@credit_card = CreditCard.find(params[:id])
  end

  def update
  	@credit_card = CreditCard.find(params[:id])
    if @credit_card.update(credit_card_params)
      redirect_to users_credit_cards_path
    else
      render 'users/credit_cards/edit'
    end
  end

  private
  def credit_card_params
    params.require(:credit_card).permit(:genre_name, :display_status)
  end
end
