class AuthController < ApplicationController
#FakeAuth is lines 3-6

    def create
      user = User.find_by(username: params[:username])
      render json: user.to_json({include: [:carts => {:include => [:cart_items => {:include => [:item]}]}], except: [:created_at, :updated_at]})

    end

    # User.find(params[:id])
    #   # render json: user.to_json(include: => [:cart => {include: => [:cart_item]}])
    #   # user = User.first
    #   render json: user.to_json({
    #     include:{
    #       carts: {except: [:created_at, :updated_at]},
    #     }
    #   })

    # User.find(params[:id])
    #   # render json: user.to_json(include: => [:cart => {include: => [:cart_item]}])
    #   # user = User.first
    #   render json: user.to_json({
    #     include:{
    #       carts: {except: [:created_at, :updated_at]},
    #     }
    #   })

    # def create
    #     user = User.find_by(username: user_params[:username])
    #     if (user && user.authenticate(params[:password]))
    #     render json: user
    #     else
    #       render json: { error_message: 'Invalid username or password' }, status: :unauthorized
    #   end
    #     end 


  end 

#---------------------------------------------------
#     skip_before_action :authorized, only: [:create, :auto_login]
    

#   def create
    
#     @user = User.find_by(username: user_login_params[:username])
   
   
#     if @user && @user.authenticate(user_login_params[:password])
#       @token = encode_token({ user_id: @user.id })
#       render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
      
      
      
#     else
#       render json: { message: 'Invalid username or password' }, status: :unauthorized
#     end
#   end
 
#   def auto_login
#     @token = params[:token]
#     # byebug
#     user = User.find(JWT.decode(@token, "put your secret password here", true, algorithm: 'HS256')[0]["user_id"])
#     render json: user
#   end

#   private

#   def user_login_params
#     params.require(:user).permit(:username, :password)
#   end
# end