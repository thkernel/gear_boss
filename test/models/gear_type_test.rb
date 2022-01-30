# == Schema Information
#
# Table name: gear_types
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

class GearTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
