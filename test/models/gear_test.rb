# == Schema Information
#
# Table name: gears
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  slug                   :string
#  gear_type_id           :bigint           not null
#  brand                  :string
#  model                  :string
#  manufacture_year       :string
#  name                   :string
#  chassis_number         :string
#  immatriculation_number :string
#  color                  :string
#  manufacture_date       :datetime
#  circulation_date       :datetime
#  mileage                :string
#  fuel_type              :string
#  status                 :string
#  description            :text
#  park_id                :bigint
#  user_id                :bigint           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require "test_helper"

class GearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
