require './config/environment'
class Gift < ActiveRecord::Base
has_many :gift_categories 
has_many :user_gifts
has_many :categories, :through => :gift_categories
has_many :users, :through => :user_gifts
end