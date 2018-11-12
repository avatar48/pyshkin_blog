class Post < ApplicationRecord
  belongs_to :user, dependent: :delete
  validates :body, length: {minimum:50}
  validates :title, length: {minimum:5, maximum:20}
  validates :title, uniqueness: true
end
