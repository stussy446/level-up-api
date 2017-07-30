class Achievement < ApplicationRecord
  validates :name, :description, :user_id, :points, presence: true

  belongs_to :user
end
