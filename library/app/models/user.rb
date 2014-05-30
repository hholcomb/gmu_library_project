class User < ActiveRecord::Base

has_secure_password

  #def password=(unencrypted_password)
  #      @password = unencrypted_password
  #      unless unencrypted_password.blank?
  #        self.password_digest = BCrypt::Password.create(unencrypted_password)
  #      end
  #end

#validates :password, presence: true, uniqueness: { case_sensitivity: false }

has_many :books, through: :reservations, dependent: :destroy

has_many :reservations


end
