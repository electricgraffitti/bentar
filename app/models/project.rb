# == Schema Information
#
# Table name: projects
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer(4)
#

class Project < ActiveRecord::Base
  
  belongs_to :category
  has_many :pics
  has_many :assets, :through => :pics
  
  named_scope :type, lambda { |type| { :include => [:category, :pics], :conditions => ['categories.category_type = ?', type]}}
  
end
