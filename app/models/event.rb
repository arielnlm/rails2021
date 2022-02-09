class Event < ApplicationRecord
  belongs_to :bookstore

  validates :name,  presence: true, length: { maximum: 15 }
  validates :description,  presence: true, length: { maximum: 50 }
  validates :bookstore_id, presence: true
end
