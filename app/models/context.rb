class Context < ApplicationRecord
  has_many :images
  validates :name, presence: true
end
