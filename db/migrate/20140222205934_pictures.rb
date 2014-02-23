class Pictures < ActiveRecord::Migration
  def change
  	create_table :pictures do |t|
  		t.float :latitude
  		t.float :longitude
  		t.float :altitude
  		t.float :image_direction

  		t.timestamps
  	end
  end
end
