class Pictures < ActiveRecord::Migration
  def change
  	create_table :pictures do |t|
  		t.float :latitude
  		t.float :longitude
  		t.float :altitude

  		t.timestamps
  	end
  end
end
