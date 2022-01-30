# == Schema Information
#
# Table name: expenses
#
#  id                   :bigint           not null, primary key
#  gear_id              :bigint
#  expense_type_id      :bigint
#  uid                  :string
#  pre_tax_amount       :float            default(0.0)
#  vat_rate             :float            default(0.0)
#  vat_amount           :float            default(0.0)
#  amount_including_tax :float            default(0.0)
#  status               :string
#  description          :text
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Expense < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :expense_type
  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end

end
