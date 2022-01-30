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

require "test_helper"

class RentalItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
