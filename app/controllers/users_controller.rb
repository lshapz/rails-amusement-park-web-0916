class UsersController < ApplicationController

def new
  @user = User.new
end

def create

  @user = User.create(user_params)
  
  session[:user_id] = @user.id
   redirect_to user_path(@user)
end

def show
  @user = User.find(params[:id])
  if session[:user_id] != @user.id 
    redirect_to root_path
  else 
    render :show
  end
end
private
def user_params
  params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
end

end 