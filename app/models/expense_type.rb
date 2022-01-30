# == Schema Information
#
# Table name: expense_types
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  status      :string
#  description :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ExpenseType < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end

end
