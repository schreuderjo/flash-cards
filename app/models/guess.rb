class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round

  def user
    round.user
  end

  def deck
    round.deck
  end

  def check_guess(card_id)
    self.user_input == Card.find(card_id).answer
  end
end
