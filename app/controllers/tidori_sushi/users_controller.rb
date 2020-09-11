class TidoriSushi::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to root_path
    end
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

  def unsubscribe_update
    @user = User.find(current_user.id)
    if @user.update(unsubscribe_status: false)
      reset_session
      redirect_to root_path
    else
      render '/tidori_sushi/users/leave'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
