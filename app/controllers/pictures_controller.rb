class PicturesController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_item, only: [:show, :update, :destroy]


  def index
    @items = Picture.all
    render json: @items
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
    render json: @item
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Picture.find(params[:id])
    end

end
