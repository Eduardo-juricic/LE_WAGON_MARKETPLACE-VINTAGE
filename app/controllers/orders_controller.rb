class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :update, :destroy]
end
