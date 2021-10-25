class BookeditemsController < ApplicationController
    before_action :authorize_request, except: [:index, :show]
    before_action :set_item, only: [:show, :update, :destroy]
    def create
        @user = User.find(bookeditem_params[:user_id])
        if (@user)
            @bookeditem = @user.bookeditem.create(bookeditem_params)
            if @bookeditem.save
                render json: @bookeditem, status: :created, location: @bookeditem
            else
                render json: @bookeditem.errors, status: :unprocessable_entity
            end
        else 
            render status: :unprocessable_entity
        end
    end
    def index
        render json: Bookeditem.all
    end
    def destroy
        @item.destroy
    end

    private
        def bookeditem_params
            params.permit(:user_id, :item_id)
        end
        def set_item
            @item = Bookeditem.find(params[:id])
        end
 
end
