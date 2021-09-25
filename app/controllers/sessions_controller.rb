class SessionsController < ApplicationController
  def new
  end
 
  # POST /sessions
  def create
    if @user = User.where(user: user['user'])
      # User found
    
      if BCrypt::Password.new(@user.password) == user['password']
        format.html { redirect_to(@user, notice: 'User was successfully authenticated.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'create' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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
