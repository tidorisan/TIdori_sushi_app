class Users::EBillsController < ApplicationController
  def index
  	@e_bill = EBill.new
  	@e_bills = EBill.all
  end

  def create
  	@e_bill = EBill.new(e_bill_params)
    if @e_bill.save
      redirect_to users_e_bills_path
    else
      render 'users/e_bills/index'
    end
  end

  def edit
  	@e_bill = EBill.find(params[:id])
  end

  def update
  	@e_bill = EBill.find(params[:id])
    if @e_bill.update(e_bill_params)
      redirect_to users_e_bills_path
    else
      render 'users/e_bills/edit'
    end
  end

  private
  def e_bill_params
    params.require(:e_bill).permit(:genre_name, :display_status)
  end

end
