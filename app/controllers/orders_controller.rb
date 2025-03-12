class OrdersController < ApplicationController
  def create
    @order = Order.new(product_id: params[:product_id], quantity: params[:quantity] || 1)
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
    @total = @orders.sum { |order| order.product.price.to_f * order.quantity.to_f }
  end

  def destroy
    @order = current_user.orders.find_by(id: params[:id])

  if @order
    @order.destroy
    redirect_to orders_path, notice: 'Pedido cancelado com sucesso!'
  else
    redirect_to orders_path, alert: 'Pedido não encontrado.'
  end
  end
  def show
    @order = Order.find(params[:id])
  end
end
