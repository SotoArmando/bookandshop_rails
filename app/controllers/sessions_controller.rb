require 'bcrypt'

class SessionsController < ApplicationController
  def new
  end
 
  # POST /sessions
  def create
    # params.permit(:user)
    @user = User.find_by(user: params["user"]["user"])
    respond_to do |format|  ## Add this
      if @user.password == params["user"]["password"]
        format.json { render json: {status:"Succesfully Authenticated"}, status: :created, location: @user }
      else
        format.json { render json: {status:"Error: please try again later"}, status: :unprocessable_entity }
      end
    end  
    
  end

  def login
  end

  def welcome
  end
end
