class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction


  def take_ride
    @user = User.find(self.user_id)
    @attraction = Attraction.find(self.attraction_id)
    if @user.tickets < @attraction.tickets && @user.height < @attraction.min_height
      "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
      # maybe a redirect?
    elsif @user.height < @attraction.min_height
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    elsif @user.tickets < @attraction.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}."    
    else
      @user.update_attributes(tickets: (@user.tickets - @attraction.tickets), nausea: @user.nausea += @attraction.nausea_rating, happiness: @user.happiness += @attraction.happiness_rating)
    end
  end

end
