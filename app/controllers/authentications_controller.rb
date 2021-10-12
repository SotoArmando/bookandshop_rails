require "jsonwebtoken"

class AuthenticationsController < ApplicationController

    # POST /authentication
    def create
      @user = User.find_by(user: user_params[:user] )
      if @user&.authenticate(user_params[:password])
        token = Jsonwebtoken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                       user: @user.user,
                       bookcart: @user.bookeditem,
                       shopcart: @user.cartitem,
                       id: @user.id}, status: :ok
      else
        render json: { error: '[Unauthorized] Wrong credentials' }, status: :unauthorized
      end
    end
  
    private

      def user_params
        params.require(:user).permit(:user, :password)
      end
end
