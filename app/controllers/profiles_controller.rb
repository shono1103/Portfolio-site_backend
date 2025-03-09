class ProfilesController < ApplicationController
    before_action :require_login
    before_action :ref_user, only: [:show, :edit, :update]

# 標準アクション====================================================================================================
    def show

    end

    def edit
        
    end

    def update

    end
# private メソッド====================================================================================================
    private
    def ref_user
        @user = User.find(session[:user_id])
        @necessary_profile = @user.necessary_profile
        @option_profile = @user.option_profile
    end
    
    def user_profile_params
        params.require(:user).permit(necessary_profile_attributes: [:id, :date_of_birth, :residence, :job], option_profile_attributes: [:id, :place_of_birth, :bio])
    end


    def require_login
        if params[:id].to_i != session[:user_id]
          flash[:alert] = "ログインが必要です"
          redirect_to login_path
        end
      end
end
