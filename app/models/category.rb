# == Schema Information
#
# Table name: categories
#
#  id            :integer(4)      not null, primary key
#  category_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Category < ActiveRecord::Base
  
  has_many :projects
  
end
