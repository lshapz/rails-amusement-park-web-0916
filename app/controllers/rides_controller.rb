require 'pry'
class RidesController < ApplicationController

def new
    @ride = Ride.new
end

def create
  #binding.pry
  @ride = Ride.create(user_id: session[:user_id], attraction_id: params[:attraction_id].to_i)
  @ride.take_ride
  
  @user = User.find(session[:user_id])
  redirect_to user_path(@user)
end 

end 