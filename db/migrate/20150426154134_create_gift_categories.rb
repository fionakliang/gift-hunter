class CreateGiftCategories < ActiveRecord::Migration
  def up
  	create_table :gift_categories do |t|
  		t.integer :gift_id
  		t.integer :category_id
  	end
  end

  def down
  	drop_table :gift_categories
  end
end
