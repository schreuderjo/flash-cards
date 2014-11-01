class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :password, presence: true

  has_many :rounds
  has_many :decks, through: :rounds

  def self.authenticate(attributes)
    # raise attributes.inspect
    # User.find_by(email: attributes[:email], password_hash: attributes[:password])
    user = User.find_by(email: attributes[:email])
    # if user.password == attributes[:password]
    if user
      # return user if BCrypt::Password.new(user.password_hash) == attributes[:password]
      return user if user.password == attributes[:password]
    end
    nil
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

end
