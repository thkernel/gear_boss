# == Schema Information
#
# Table name: gear_types
#
#  id          :bigint           not null, primary key
#  uid         :string
#  slug        :string
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GearType < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end

end
