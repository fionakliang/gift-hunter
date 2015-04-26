class GiftCategories < ActiveRecord::Base
belongs_to :gift, :category
end
