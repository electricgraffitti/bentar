# == Schema Information
#
# Table name: pics
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  description        :text
#  main_display       :boolean(1)
#  interior           :boolean(1)
#  exterior           :boolean(1)
#  created_at         :datetime
#  updated_at         :datetime
#  asset_file_name    :string(255)
#  asset_content_type :string(255)
#  asset_file_size    :integer(4)
#  asset_updated_at   :datetime
#  project_id         :integer(4)
#

require 'test_helper'

class PicTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
