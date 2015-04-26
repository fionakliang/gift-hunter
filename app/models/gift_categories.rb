class GiftCategory < ActiveRecord::Base
belongs_to :gift, :category
end
