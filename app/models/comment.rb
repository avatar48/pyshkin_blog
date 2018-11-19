class Comment < ApplicationRecord
  belongs_to :user, dependent: :delete, counter_cache: true
  belongs_to :commentable, polymorphic: true
  validates :body, length: {minimum:5}
  validates :body, uniqueness: true
end
