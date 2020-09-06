class Users::CreditCardsController < ApplicationController
  before_action :login_required

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

  def login_required
      redirect_to root_path unless current_user.role == "store_admin" || current_user.role == "site_admin"
  end
end
