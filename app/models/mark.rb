class Mark < ApplicationRecord
  belongs_to :post, dependent: :destroy
  belongs_to :user
  validates :stars, numericality: { less_than_or_equal_to: 5,  only_integer: true }
end
