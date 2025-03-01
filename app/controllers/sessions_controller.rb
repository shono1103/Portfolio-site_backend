class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password]) # パスワードが正しいかどうかを確認
      session[:user_id] = user.id # sessionにuser_idを保存
      redirect_to user, notice: "ログインしました！"
    else
      flash.now[:alert] = "メールアドレスまたはパスワードが無効です"
      render :new, status: :unprocessable_entity # ログインページを再表示とエラーメッセージを表示
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "ログアウトしました"
  end
end
