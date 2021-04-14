class List < ApplicationRecord
    # アソシエーション
    has_many :tasks
    has_many :user_lists
    has_many :users, through: :user_lists

    # 空の場合はDBに保存しない
    # validates :name, presence: true

end
