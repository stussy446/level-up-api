class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :username, :email, :password, :xp, presence: true
  validates :username, :email, uniqueness: true

  has_many :picked_achievements, class_name: "UserAchievement"
  has_many :incompleted_achievements, -> { where({ completed: false}) }, class_name: "UserAchievement"
  has_many :completed_achievements, -> { where({ completed: true}) }, class_name: "UserAchievement"

end
