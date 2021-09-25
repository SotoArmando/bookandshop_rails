class SessionsController < ApplicationController
  def new
  end
 
  # POST /sessions
  def create
    @user = User.find_by(user: params[:user])
    if @user && @user.authenticate(params[:password])
      format.html { redirect_to(@user, notice: 'User was successfully authenticated.') }
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: 'create' }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  def login
  end

  def welcome
  end
end
