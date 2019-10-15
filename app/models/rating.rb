class Rating < ApplicationRecord

  belongs_to :resturant
  has_one :review

end
