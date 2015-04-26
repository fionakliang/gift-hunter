class User < ActiveRecord::Base
has_many :user_gift
has_many :gifts, through: :user_gift
end