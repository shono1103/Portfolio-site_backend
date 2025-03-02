class UsersController < ApplicationController
  before_action :require_login, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "アカウントが作成されました！"
      redirect_to @user
    else
      flash.now[:alert] = "アカウントの作成に失敗しました。"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:family_name, :given_name, :email, :password, :password_confirmation)
  end

  def require_login
    if params[:id].to_i != session[:user_id]
      flash[:alert] = "ログインが必要です"
      redirect_to login_path
    end
  end
end