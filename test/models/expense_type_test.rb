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

require "test_helper"

class ExpenseTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
