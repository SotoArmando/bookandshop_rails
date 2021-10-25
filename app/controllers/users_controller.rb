class UsersController < ApplicationController
  # before_action :authorize_request, except: :create
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    render json: User.all, include: [:cartitem,:bookeditem,:appointment]
  end

  # GET /users/1
  def show
    render json: @user.build
  end

  # POST /users
  def create
    
    @user = User.new(user_params)

    if @user.save
      respond_to do |format|
        if @user.save
          # Tell the UserMailer to send a welcome email after save
          UserMailer.with(user: @user).welcome_email.deliver_now
  
          format.json { render json: @user, include: [:bookeditem, :cartitem, :appointment], status: :created }
        else
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:user, :nick, :password)
    end
end
