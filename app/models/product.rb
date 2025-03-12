class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
