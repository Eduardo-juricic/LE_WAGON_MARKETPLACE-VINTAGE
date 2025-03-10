class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
end
