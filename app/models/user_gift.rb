class UserGift < ActiveRecord::Base
belongs_to :user, :gift
end