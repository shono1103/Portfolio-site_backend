class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update]
  before_action :ref_user, only: [:show, :edit, :update]
# 標準アクション====================================================================================================
  def new
    @user = User.new
    @necessary_profile = @user.build_necessary_profile
    @unnecessary_profile = @user.build_unnecessary_profile
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
    # @user, @necessary_profile, @unnecessary_profileはref_userで設定される
  end

  def edit
    # @user, @necessary_profile, @unnecessary_profileはref_userで設定される
  end

  def update
    # @user, @necessary_profile, @unnecessary_profileはref_userで設定される
    if @user.update(user_params_profile)
      flash[:notice] = "アカウント情報を更新しました！"
      redirect_to @user
    else
      flash.now[:alert] = "アカウント情報の更新に失敗しました。"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "アカウントが削除されました！"
    redirect_to login_path
  end
# private メソッド====================================================================================================
  private

  def ref_user
    @user = User.find(session[:user_id])
  end

  def user_params
    params.require(:user).permit(:family_name, :given_name, :email, :password, :password_confirmation, :name_order, necessary_profile_attributes: [:id, :date_of_birth, :residence, :job], unnecessary_profile_attributes: [:id, :place_of_birth, :bio])
  end

  def require_login
    if params[:id].to_i != session[:user_id]
      flash[:alert] = "ログインが必要です"
      redirect_to login_path
    end
  end
end