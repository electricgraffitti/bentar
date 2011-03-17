class AddMessageToAssociates < ActiveRecord::Migration
  def self.up
    add_column :associates, :message, :text
  end

  def self.down
    remove_column :associates, :message
  end
end
