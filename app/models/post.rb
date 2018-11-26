class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user, dependent: :delete
  has_many :comments, as: :commentable
  has_many :commentators, through: :comments, source: :user, source_type: :User  
  has_many :seo, as: :seoable
  validates :body, length: {minimum:50}
  validates :title, length: {minimum:5, maximum:20}
  validates :title, uniqueness: true
end
