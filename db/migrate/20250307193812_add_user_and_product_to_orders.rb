class AddUserAndProductToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :user, null: false, foreign_key: true
    add_reference :orders, :product, null: false, foreign_key: true
    remove_reference :orders, :users, foreign_key: true
    remove_reference :orders, :products, foreign_key: true
  end
end
