class OrdersController < ApplicationController
    before_action :require_admin, only: %i[ new create ]

    def index
        unless Order.all.count == 0
            longurl = Order.all[0].url
            @url = longurl + "/viewform?embedded=true"
        end
    end

    def new
        @order = Order.new
    end

    def create
        Order.delete_all
        @order = Order.new(order_params)

        respond_to do |format|
            if @order.save
                format.html { redirect_to root_path, notice: "Url sikeresen módosítva." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    private
    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:url)
    end
end