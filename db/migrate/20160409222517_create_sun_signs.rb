class CreateSunSigns < ActiveRecord::Migration
  def change
    create_table :sun_signs do |t|
      t.string :name
      t.string :month
      t.string :day
      t.integer :previous_id
      t.integer :next_id
      t.string :quality
      t.string :element
      t.string :celestial_body
      t.string :info
      t.string :strengths
      t.string :weaknesses
      t.string :most_compatible
      t.string :least_compatible

      t.timestamps null: false
    end
  end
end
