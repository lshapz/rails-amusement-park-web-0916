class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  validates :password, presence: true

  def mood
      if self.nausea > self.happiness
        return 'sad'
      elsif self.happiness > self.nausea
        return 'happy'
      else
        return 'unsure'
      end
  end
    
end
