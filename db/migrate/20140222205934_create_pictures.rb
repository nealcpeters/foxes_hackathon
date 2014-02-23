class CreatePictures < ActiveRecord::Migration
  def change
  	create_table :pictures do |t|
  		t.float :latitude
  		t.float :longitude
  		t.float :altitude
  		t.float :image_direction
  		t.integer :user_id

  		t.timestamps
  	end
  end
end
