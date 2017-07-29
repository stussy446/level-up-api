class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  has_many :sent_requests, class_name: "Friendship", foreign_key: "sender_id"
  has_many :received_requests, class_name: "Friendship", foreign_key: "receiver_id"
  has_many :achievements
end
