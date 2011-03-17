class CreatePics < ActiveRecord::Migration
  def self.up
    create_table :pics do |t|
      t.string :title
      t.text :description
      t.boolean :main_display
      t.boolean :interior
      t.boolean :exterior

      t.timestamps
    end
  end

  def self.down
    drop_table :pics
  end
end
