require 'test_helper'

class AssociateTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: associates
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  business_name :string(255)
#  email         :string(255)
#  phone         :string(255)
#  street        :string(255)
#  city          :string(255)
#  state_id      :integer(4)
#  zipcode       :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  body          :text
#  message       :text
#

