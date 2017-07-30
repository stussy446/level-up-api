class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :username, :email, :password, :xp, presence: true
  validates :username, :email, uniqueness: true

  has_many :achievements
end
