class User < ActiveRecord::Base
  # Remember to create a migration!
  def self.authenticate (attributes)
    # if self.
    user = User.find_by(email: attributes[:email], password: attributes[:password])
  end
end
