class Card < ActiveRecord::Base
  validates :question, presence: true
  validates :answer, presence: true

  belongs_to :deck
end
