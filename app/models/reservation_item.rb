class ReservationItem < ApplicationRecord

	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :reservation

  # Change default params ID to uid
  def to_param
    uid
  end

  
end
