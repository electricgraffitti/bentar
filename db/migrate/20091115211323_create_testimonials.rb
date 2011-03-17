class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.text :content
      t.string :name
      t.string :title
      t.string :company

      t.timestamps
    end
  end

  def self.down
    drop_table :testimonials
  end
end
