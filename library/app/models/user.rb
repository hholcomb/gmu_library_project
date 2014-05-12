class User < ActiveRecord::Base

	   # Returns self if the password is correct, otherwise false.
	   # from https://github.com/rails/rails/blob/3-2-stable/activemodel/lib/active_model/secure_password.rb
  def authenticate(login_password)
    puts "user object fields are"
    puts self.inspect
        if  login_password == self.password
          self
        else
          false
        end
  end

  #def password=(unencrypted_password)
  #      @password = unencrypted_password
  #      unless unencrypted_password.blank?
  #        self.password_digest = BCrypt::Password.create(unencrypted_password)
  #      end
  #end

has_many :books, through: :reservations, dependent: :destroy

has_many :reservations

end
