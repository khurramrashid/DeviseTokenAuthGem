class Resturant < ApplicationRecord

  has_many :time_slots
  has_many :offers
  has_many :reservations
  has_many :ratings
  has_many :reviews
  has_many :images

end
