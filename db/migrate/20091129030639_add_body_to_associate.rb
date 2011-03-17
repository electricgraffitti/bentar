class AddBodyToAssociate < ActiveRecord::Migration
  def self.up
    add_column :associates, :body, :text
  end

  def self.down
    remove_column :associates, :body
  end
end
