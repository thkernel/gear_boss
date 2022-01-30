# == Schema Information
#
# Table name: rentals
#
#  id         :bigint           not null, primary key
#  uid        :string
#  booking_id :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class RentalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
