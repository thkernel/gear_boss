# == Schema Information
#
# Table name: rental_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  rental_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RentalItem < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :rental

  # Change default params ID to uid
  def to_param
    uid
  end


end
