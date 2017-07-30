class UserAchievement < ApplicationRecord
  validates :user_id, :achievement_id, presence: true
end
