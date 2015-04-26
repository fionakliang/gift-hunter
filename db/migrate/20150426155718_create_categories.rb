class CreateCategories < ActiveRecord::Migration
  def up 
  	create_table :categories do |t|
  		t.string :category_name
  	end
  end

  def down
  	drop_table :categories
  end
end
