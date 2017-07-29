class Friendship < ApplicationRecord
  belongs_to :recipient, class_name: "User", inverse_of: :received_requests
  belongs_to :sender, class_name: "User", inverse_of: :sent_requests
end
