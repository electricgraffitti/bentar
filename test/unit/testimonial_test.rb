# == Schema Information
#
# Table name: testimonials
#
#  id         :integer(4)      not null, primary key
#  content    :text
#  name       :string(255)
#  title      :string(255)
#  company    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class TestimonialTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
