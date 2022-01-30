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

require "test_helper"

class InvoiceItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
