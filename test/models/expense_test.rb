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

require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
