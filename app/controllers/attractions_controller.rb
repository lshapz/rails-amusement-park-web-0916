class AttractionsController < ApplicationController


def index
  @attractions = Attraction.all 
end 
def show
  @attraction = Attraction.find(params[:id])
  @user = User.find(session[:user_id])
end 

def new
  @attraction = Attraction.new
end 

def create

end 


end 