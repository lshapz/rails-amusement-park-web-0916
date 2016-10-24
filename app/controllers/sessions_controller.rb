require 'pry'
class SessionsController < ApplicationController

def new

end 

def create
  # binding.pry
  #@user = User.new(name: params['user']['name'])

  @user = User.find_by(name: params['user']['name'])
  # binding.pry 
  if @user == nil 
    redirect_to (root_path)
  else 
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end 
end 

def destroy
  session[:user_id] = nil
  redirect_to root_path
end 

end 