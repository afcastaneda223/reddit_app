class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { minimum: 5, maximum: 500 }
  validates :user_id, presence: true
end
