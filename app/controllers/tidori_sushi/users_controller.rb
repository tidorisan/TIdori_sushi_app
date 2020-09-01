class TidoriSushi::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to tidori_sushi_user_path(@user)
    else
      render :show
    end
  end

  def leave
  	
  end

  def unsubscribe_updat
  	
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :image)
  end
end
