class PublishingHouse < ApplicationRecord
  has_many :books
  has_one :location
end
