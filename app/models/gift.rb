require './config/environment'
class Gift < ActiveRecord::Base
has_many :gift_categories
has_many :categories, through: :gift_categories
end