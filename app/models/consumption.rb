# == Schema Information
#
# Table name: consumptions
#
#  id          :bigint           not null, primary key
#  uid         :string
#  gear_id     :bigint
#  driver_id   :bigint
#  quantity    :float            default(0.0)
#  unit        :string
#  fuel_type   :string
#  status      :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Consumption < ApplicationRecord
  belongs_to :user
end
