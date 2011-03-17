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

class Testimonial < ActiveRecord::Base
end
