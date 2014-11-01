class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round

  def user
    round.user
  end

  def deck
    round.deck
  end
end
