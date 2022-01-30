# == Schema Information
#
# Table name: invoice_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  invoice_id :bigint           not null
#  r_id       :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceItem < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :invoice

  # Change default params ID to uid
  def to_param
    uid
  end


end
