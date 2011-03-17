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

class Pic < ActiveRecord::Base
  
  belongs_to :project
  
  # PaperClip
  has_attached_file :asset, 
                    :styles => { :full => "600x338#", :medium => "450x252#", :small => "280x157#", :thumb => "175x98#" },
                    :url => "/assets/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/assets/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :asset_file_name, :asset_content_type, :asset_file_size
  
  # Named Scopes
  named_scope :main_pic, :conditions => ["main_display = ?", 1]
  named_scope :interior, :conditions => ["interior = ?", 1]
  named_scope :exterior, :conditions => ["exterior = ?", 1]
  
end
