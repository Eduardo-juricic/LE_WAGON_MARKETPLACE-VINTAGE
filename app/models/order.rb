class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  enum status: { pending: 'pendente', confirmed: 'confirmado', shipped: 'enviado', delivered: 'entregue' }

  validates :status, presence: true
end
