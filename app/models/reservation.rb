class Reservation < ApplicationRecord

  belongs_to :resturant
  belongs_to :time_slot
  belongs_to :user

  has_one :occassion

end
