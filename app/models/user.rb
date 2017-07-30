class User < ApplicationRecord
  has_secure_password

  validates :username, :password, presence: true
  validates :username, uniqueness: true

  has_many :picked_achievements, class_name: "UserAchievement"
  has_many :incompleted_achievements, -> { where({ completed: false}) }, class_name: "UserAchievement"
  has_many :completed_achievements, -> { where({ completed: true}) }, class_name: "UserAchievement"
  has_one :avatar

end
