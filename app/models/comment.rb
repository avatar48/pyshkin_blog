class Comment < ApplicationRecord
  belongs_to :user, dependent: :delete
  belongs_to :post
  validates :body, length: {minimum:5}
  validates :body, uniqueness: true
end
