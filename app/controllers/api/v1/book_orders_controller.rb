class Api::V1::BookOrdersController < ApplicationController
    skip_before_action :authorized

    def index
        book_orders = BookOrder.all
        render json: book_orders
    end

    def show
        book_order = BookOrder.find(params[:id])
        render json: book_order
    end

    def create
        book_order = BookOrder.create(book_order_params)
        if book_order.valid?
            render json: book_order
        else
            render json: {error: "Invalid book order"}, status: :not_acceptable
        end
    end



    private

    def book_order_params
        params.require(:book_order).permit(:product, :total_price, :phone_number, :status)
    end

end
