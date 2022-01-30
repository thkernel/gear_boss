# == Schema Information
#
# Table name: rentals
#
#  id         :bigint           not null, primary key
#  uid        :string
#  booking_id :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rental < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :booking
  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end

end
