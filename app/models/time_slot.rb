class TimeSlot < ApplicationRecord

  belongs_to :resturant
  has_one :offer
  has_many :reservation

end
