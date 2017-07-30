class Avatar < ApplicationRecord
  validates :user_id, :name, :img, presence: true

  belongs_to :user

end
