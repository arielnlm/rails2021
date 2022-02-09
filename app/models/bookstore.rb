class Bookstore < ApplicationRecord
  has_one :location
  has_many :bookstore_inventory
  has_many :books, :through => :bookstore_inventory
  has_many :events
end
