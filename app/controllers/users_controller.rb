class Admin::UsersController < Admin::AdminController
    before_action :load_user, only: :show
  
    def index
      @users = User.all
    end
    
    private
  
    def load_user
      @user = User.find_by id: params[:id]
      return if @user
    #   flash[:danger] = t ".danger"
      redirect_to root_url
    end
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
  