class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :password_hash, uniqueness: true

  has_many :rounds
  has_many :decks, through: :rounds

  def self.authenticate(attributes)
    User.find_by(email: attributes[:email], password_hash: attributes[:password])
  end

  # def password
  #   @password ||= BCrypt::Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = BCrypt::Password.create(new_password)
  #   self.password_hash = @password
  # end

end
