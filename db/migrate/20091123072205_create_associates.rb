class CreateAssociates < ActiveRecord::Migration
  def self.up
    create_table :associates do |t|
      t.string :name
      t.string :business_name
      t.string :email
      t.string :phone
      t.string :street
      t.string :city
      t.integer :state_id
      t.string :zipcode

      t.timestamps
    end
  end

  def self.down
    drop_table :associates
  end
end
