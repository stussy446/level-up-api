class Friendship < ApplicationRecord
  validates :sender_id, :receiver_id, presence: true

  belongs_to :user
  belongs_to :friends, class_name: "User"
end
