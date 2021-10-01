require 'bcrypt'

class SessionsController < ApplicationController 

  # POST /sessions
  def create
    @user = User.find_by(user: params["user"]["user"])
    respond_to do |format|  ## Add this
      if @user.password_digest == params["user"]["password"]
        format.json { render json: {status:"Succesfully Authenticated",id:@user.id,bookcart:@user.bookcart,shopcart:@user.bookcart}, status: :created, location: @user }
      else
        format.json { render json: {status:"Error: please try again later"}, status: :unprocessable_entity }
      end
    end  
    
  end
  private
  # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user])
    end
    # Only allow a list of trusted parameters through.
    def item_params
      params.permit(:user, :password,:bookcart,:shopcart)
    end
end
