class Mark < ApplicationRecord
  belongs_to :user
  has_many :post
  validates :stars, lnumericality: { less_than_or_equal_to: 5,  only_integer: true }
end
