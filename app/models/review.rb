class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  accepts_nested_attributes_for :book
  
  validates :rating,  presence: true, numericality: { less_than_or_equal_to: 5,  only_integer: true , greater_than_or_equal_to: 1}
  validates :comment,  presence: true, length: { maximum: 200 }
end
