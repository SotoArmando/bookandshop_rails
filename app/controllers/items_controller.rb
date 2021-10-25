class ItemsController < ApplicationController
  # before_action :authorize_request, except: [:index, :show]
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    render json: Item.all, include: [:picture]
  end

  # GET /items/1
  def show
    render json: @item , include: [:picture]
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end   
  end

  # PATCH/PUT /items/1
  def update
    puts()
    if @item.update(params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.includes(:picture).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:make, :model, :year, :duration)
    end
end
