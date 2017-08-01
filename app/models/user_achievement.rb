class UserAchievement < ApplicationRecord
  validates :user_id, :achievement_id, presence: true

  belongs_to :user
  belongs_to :achievement
end
