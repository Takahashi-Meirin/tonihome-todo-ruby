class UserList < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :list
end
