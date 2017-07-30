class Achievement < ApplicationRecord
  validates :name, :description, :points, presence: true

 
end
