class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publishing_house
  belongs_to :category
  has_many :reviews
  has_many :purchases
  has_many :users, :through => :purchases
  
  has_many :bookstore_inventory
  has_many :bookstores, :through => :bookstore_inventory
  
  validates :name, presence: true, length: { minimum: 1 }
  validates :description,  presence: true, length: { maximum: 4 }
  validates :publishing_house_id,  presence: true
  validates :author_id, presence: true
end
