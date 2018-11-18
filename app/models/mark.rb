class Mark < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :stars, lnumericality: { less_than_or_equal_to: 5,  only_integer: true }
end
