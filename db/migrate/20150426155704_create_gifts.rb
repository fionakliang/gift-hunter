class CreateGifts < ActiveRecord::Migration
  def up
  	create_table :gifts do |t|
  		t.string :giftname
  		t.string :photo
  		t.string :url
  		t.integer :price
  	end
  end

  def down 
  	drop_table :gifts 
  end 
end
