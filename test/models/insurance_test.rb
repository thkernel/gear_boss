# == Schema Information
#
# Table name: insurances
#
#  id                   :bigint           not null, primary key
#  insurer_id           :bigint
#  gear_id              :bigint
#  start_date           :datetime
#  end_date             :datetime
#  insurance_number     :string
#  pre_tax_amount       :float            default(0.0)
#  vat_rate             :float            default(0.0)
#  vat_amount           :float            default(0.0)
#  amount_including_tax :float            default(0.0)
#  status               :string
#  user_id              :bigint
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require "test_helper"

class InsuranceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
