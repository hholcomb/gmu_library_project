class Reservation < ActiveRecord::Base
#  belongs_to :user, dependent: :destroy
  belongs_to :book, dependent: :destroy
  belongs_to :user
  belongs_to :book
end
