class CreateUserGift < ActiveRecord::Migration
  def up
  	create_table :user_gifts do |t|
  		t.integer :gift_id
  		t.integer :user_id
  	end
  end

  def down
  	drop_table :user_gifts
  end
end