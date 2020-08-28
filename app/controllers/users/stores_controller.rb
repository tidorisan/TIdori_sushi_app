class Users::StoresController < ApplicationController
  def index
  end

  def new
    @store = Store.new
    @credit_cards = CreditCard.all
    @e_bills = EBill.all
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

end
