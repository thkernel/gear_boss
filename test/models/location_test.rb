# == Schema Information
#
# Table name: locations
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

require "test_helper"

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
