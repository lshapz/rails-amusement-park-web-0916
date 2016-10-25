require 'pry'
class RidesController < ApplicationController

def new
    @ride = Ride.new
end

def create
  #binding.pry
  @user = User.find(session[:user_id])
  @ride = Ride.create(user_id: session[:user_id], attraction_id: params[:attraction_id].to_i)
  #@ride.take_ride
  flash[:notice] = @ride.take_ride

  redirect_to user_path(@user)
end 

end 