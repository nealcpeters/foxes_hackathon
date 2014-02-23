class Pictures < ActiveRecord::Migration
  def change
  	create_table :pictures do |t|
<<<<<<< HEAD
=======
  		t.float :latitude
  		t.float :longitude
  		t.float :altitude

  		t.timestamps
>>>>>>> 01663a014f61f139e365c7aac12d47ff42f117d5
  	end
  end
end
