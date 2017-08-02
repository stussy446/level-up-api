class User < ApplicationRecord
  has_secure_password

  validates :username, :password, presence: true
  validates :username, uniqueness: true

  has_many :user_achievements
  has_many :achievements, through: :user_achievements
  has_many :picked_achievements, class_name: "UserAchievement"
  has_many :incompleted_achievements, -> { where({ completed: false}) }, class_name: "UserAchievement"
  has_many :completed_achievements, -> { where({ completed: true}) }, class_name: "UserAchievement"
  has_one :avatar
  has_many :sent_comments, class_name: "Comment", foreign_key: "sender_id"
  has_many :received_comments, class_name: "Comment", foreign_key: "receiver_id"

end
