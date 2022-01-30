# == Schema Information
#
# Table name: booking_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  booking_id :bigint           not null
#  gear_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BookingItem < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :booking

  # Change default params ID to uid
  def to_param
    uid
  end
  
end
