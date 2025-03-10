class OrdersController < ApplicationController
  def create
    @order = Order.new(product_id: params[:product_id])
    @order.user = current_user
    @order.status = "pending"

    if @order.save
      redirect_to orders_path, notice: 'Pedido criado com sucesso!' 
    else
      redirect_to root_path, alert: 'Erro ao criar o pedido.'
    end
  end

  def index
    @orders = current_user.orders
  end
end
