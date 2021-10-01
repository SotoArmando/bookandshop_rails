require "jsonwebtoken"

class AuthenticationController < ApplicationController
    before_action :authorize_request, except: :login
  
    # POST /auth
    def login
      @user = User.find_by(user: params[:user])
      if @user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                       username: @user.user,
                       bookcart: @user.bookcart,
                       shopcart: @user.shopcart}, status: :ok
      else
        render json: { error: 'unauthorized' }, status: :unauthorized
      end
    end
  
    private
  
    def login_params
      params.permit(:user, :password)
    end
end
