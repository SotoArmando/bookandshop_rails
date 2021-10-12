class CartitemsController < ApplicationController
    before_action :authorize_request, except: [:index, :show]
    before_action :set_item, only: [:show, :update, :destroy]
    def create
        @user = User.find(cartitem_params[:user_id])
        if (@user)
            @cartitem = @user.cartitem.create(cartitem_params)
            if @cartitem.save
                render json: @cartitem, status: :created, location: @cartitem
            else
                render json: @cartitem.errors, status: :unprocessable_entity
            end
        else 
            render status: :unprocessable_entity
        end
    end
    def index
        render json: Cartitem.all
    end
    def destroy
        @item.destroy
        redirect_to action: "index"
    end

    private
        def cartitem_params
            params.permit(:user_id, :item_id, :appointment_id)
        end
        def set_item
            @item = Cartitem.find(params[:id])
        end
end
